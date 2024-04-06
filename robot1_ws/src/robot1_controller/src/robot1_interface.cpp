/*
  This code implements the Hardware Interface that enables the communication
  between the ROS environment and the real robot.
  It uses the ros_control package that allows to abstract the hardware from the software 
  and from the driver required in order to communicate with the hardware.

  In this case, the hardware is an Arduino Board and the driver interface with the hardware is 
  simply composed of a publisher that publishes the desired joint angles of each servo motor.
  Via rooserial_arduino, the Arduino Board will subscribe to this topic and will command the
  servo motor to perorm the desired mouvements. 

*/

#include "robot1_controller/robot1_interface.hpp"
#include <std_msgs/UInt16MultiArray.h>
#include "robot1_controller/AnglesConverter.h"


Robot1Interface::Robot1Interface(ros::NodeHandle& nh) : nh_(nh), 
            pnh_("~"),
            pos_(4, 0),
            vel_(4, 0),
            eff_(4, 0),
            cmd_(4, 0),
            names_{"joint1", "joint2", "joint3", "joint4", "joint5", "joint6"}
{
    // Read from the param server
    pnh_.param("joint_names", names_, names_);

    // Init the publisher with the hardware
    hardware_pub_ = pnh_.advertise<std_msgs::UInt16MultiArray>("/arduino/arm_actuate", 1000);
    hardware_srv_ = pnh_.serviceClient<robot1_controller::AnglesConverter>("/radians_to_degrees");
    
    ROS_INFO("Starting Robot1 Hardware Interface...");

    // connect and register joint state interface
    hardware_interface::JointStateHandle state_handle1(names_.at(0), &pos_.at(0), &vel_.at(0), &eff_.at(0));
    joint_state_interface_.registerHandle(state_handle1);
    hardware_interface::JointStateHandle state_handle2(names_.at(1), &pos_.at(1), &vel_.at(1), &eff_.at(1));
    joint_state_interface_.registerHandle(state_handle2);
    hardware_interface::JointStateHandle state_handle3(names_.at(2), &pos_.at(2), &vel_.at(2), &eff_.at(2));
    joint_state_interface_.registerHandle(state_handle3);
    hardware_interface::JointStateHandle state_handle4(names_.at(3), &pos_.at(3), &vel_.at(3), &eff_.at(3));
    joint_state_interface_.registerHandle(state_handle4);
    hardware_interface::JointStateHandle state_handle5(names_.at(4), &pos_.at(4), &vel_.at(4), &eff_.at(4));
    joint_state_interface_.registerHandle(state_handle5);
    hardware_interface::JointStateHandle state_handle6(names_.at(5), &pos_.at(5), &vel_.at(5), &eff_.at(5));
    joint_state_interface_.registerHandle(state_handle6);

    registerInterface(&joint_state_interface_);

    // connect and register joint position interface
    // the motors accept position inputs
    hardware_interface::JointHandle position_handle1(joint_state_interface_.getHandle(names_.at(0)), &cmd_.at(0));
    joint_position_interface_.registerHandle(position_handle1);
    hardware_interface::JointHandle position_handle2(joint_state_interface_.getHandle(names_.at(1)), &cmd_.at(1));
    joint_position_interface_.registerHandle(position_handle2);
    hardware_interface::JointHandle position_handle3(joint_state_interface_.getHandle(names_.at(2)), &cmd_.at(2));
    joint_position_interface_.registerHandle(position_handle3);
    hardware_interface::JointHandle position_handle4(joint_state_interface_.getHandle(names_.at(3)), &cmd_.at(3));
    joint_position_interface_.registerHandle(position_handle4);
    hardware_interface::JointHandle position_handle5(joint_state_interface_.getHandle(names_.at(4)), &cmd_.at(4));
    joint_position_interface_.registerHandle(position_handle5);
    hardware_interface::JointHandle position_handle6(joint_state_interface_.getHandle(names_.at(5)), &cmd_.at(5));
    joint_position_interface_.registerHandle(position_handle6);

    registerInterface(&joint_position_interface_);

    ROS_INFO("Interfaces registered.");

    ROS_INFO("Preparing the Controller Manager");

    controller_manager_.reset(new controller_manager::ControllerManager(this, nh_));
    update_freq_ = ros::Duration(0.1);
    looper_ = nh_.createTimer(update_freq_, &Robot1Interface::update, this);
    
    ROS_INFO("Ready to execute the control loop");
}

void Robot1Interface::update(const ros::TimerEvent& e)
{
    // This function is called periodically in order to update the controller
    // manager about the progress in the execution of the goal of the hardware
    ROS_INFO("Update Event");
    elapsed_time_ = ros::Duration(e.current_real - e.last_real);
    read();
    controller_manager_->update(ros::Time::now(), elapsed_time_);
    write(elapsed_time_);
}

void Robot1Interface::read()
{
    // Reads the current status of the Hardware (Arduino)
    // Open Loop Control - no sensor available on the robot taht detects the effective
    // angle of rotation of each joint. Suppose that the motors are always able to follow
    // the position command
    pos_.at(0) = cmd_.at(0);
    pos_.at(1) = cmd_.at(1);
    pos_.at(2) = cmd_.at(2);
    pos_.at(3) = cmd_.at(3);
    pos_.at(4) = cmd_.at(4);
    pos_.at(5) = cmd_.at(5);
}

void Robot1Interface::write(ros::Duration elapsed_time)
{    
    // Send the command to the Hardware (Arduino)
    // First converts the angle from the moveit/urdf convention 
    // to the Arduino convention and then publishes the converted angles
    robot1_controller::AnglesConverter srv;
    srv.request.base = cmd_.at(0);
    srv.request.holder1 = cmd_.at(1);
    srv.request.bracket1 = cmd_.at(2);
    srv.request.holder2 = cmd_.at(3);
    srv.request.bracket2 = cmd_.at(4);
    srv.request.gripper = cmd_.at(5);

    // Call the service and show the response of the service
    if (hardware_srv_.call(srv))
    {
        // compose the array message
        std::vector<unsigned int> angles_deg;
        angles_deg.push_back(srv.response.base);
        angles_deg.push_back(srv.response.holder1);
        angles_deg.push_back(srv.response.bracket1);
        angles_deg.push_back(srv.response.holder2);
        angles_deg.push_back(srv.response.bracket2);
        angles_deg.push_back(srv.response.gripper);

        std_msgs::UInt16MultiArray msg;

        // set up dimensions
        msg.layout.dim.push_back(std_msgs::MultiArrayDimension());
        msg.layout.dim[0].size = angles_deg.size();
        msg.layout.dim[0].stride = 1;

        // copy in the data
        msg.data.clear();
        msg.data.insert(msg.data.end(), angles_deg.begin(), angles_deg.end());

        // publish the array message to the defined topic
        hardware_pub_.publish(msg);
    }
    else
    {
        ROS_ERROR("Failed to call service radians_to_degrees");
    }
}


int main(int argc, char** argv)
{
    ros::init(argc, argv, "robot1_interface_node");
    ros::NodeHandle nh;
    ros::MultiThreadedSpinner spinner(2);
    Robot1Interface robot(nh);

    // Keep ROS up and running
    spinner.spin();
    return 0;
}