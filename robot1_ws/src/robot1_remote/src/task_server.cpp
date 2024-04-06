#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <robot1_remote/Robot1TaskAction.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <vector>
#include <moveit/planning_scene_interface/planning_scene_interface.h>


class TaskServer
{
  private:

    ros::NodeHandle nh_;
    actionlib::SimpleActionServer<robot1_remote::Robot1TaskAction> as_; 
    // NodeHandle instance must be created before this line. Otherwise strange error occurs.
    std::string action_name_;
    // create messages that are used to publish result
    robot1_remote::Robot1TaskResult result_;
    std::vector<double> arm_goal_;
    std::vector<double> gripper_goal_;
    moveit::planning_interface::MoveGroupInterface arm_move_group_;
    moveit::planning_interface::MoveGroupInterface gripper_move_group_;

  public:

    // Constructor
    // function that inizialize the ArduinobotTaskAction class and creates 
    // a Simple Action Server from the library actionlib
    TaskServer(std::string name) :
      as_(nh_, name, boost::bind(&TaskServer::execute_cb, this, _1), false)
      , action_name_(name)
      , arm_move_group_( "robot1_arm")
      , gripper_move_group_("robot1_hand")
    {
      as_.start();
    }

    void execute_cb(const robot1_remote::Robot1TaskGoalConstPtr &goal)
{
  bool success = true;

  // start executing the action
  // based on the goal id received, send a different goal 
  // to the robot
  if (goal->task_number == 0)
  {
    arm_goal_ = {0, 2.01, 0.52, 1.06, 3.14};
    gripper_goal_ = {-0.5, 0};
  }
  else if (goal->task_number == 1)
  {
    arm_goal_ = {1.44, 2.44, 1.4, -0.37, 3.31};
    gripper_goal_ = {0.0, 0.0};
  }
  else if (goal->task_number == 2)
  {
    arm_goal_ = {3.14, 1.67, 1.04, 1.7, 1.57};
    gripper_goal_ = {0.0, 0.0};
  }
  else if (goal->task_number == 3) // New task number for MoveIt GUI pose
  {
    ROS_INFO("Waiting for MoveIt GUI input...");

    // Wait for MoveIt to receive GUI input and plan trajectory
    arm_move_group_.setGoalTolerance(0.01); // Set a tolerance for reaching the goal
    arm_move_group_.setPlanningTime(10.0); // Set a longer planning time for potentially complex movements

    // Block until MoveIt finishes planning or preempted by the client
    moveit::core::MoveItErrorCode plan_result = arm_move_group_.move();

    // Check if planning was successful
    if (plan_result != moveit::core::MoveItErrorCode::SUCCESS)
    {
      ROS_ERROR("Failed to plan trajectory using MoveIt GUI");
      result_.success = false;
      as_.setAborted(result_);
      return;
    }

    // Get the final pose after MoveIt planning
    geometry_msgs::PoseStamped current_pose = arm_move_group_.getCurrentPose();
    arm_goal_ = {current_pose.pose.position.x, current_pose.pose.position.y, current_pose.pose.position.z,
                 current_pose.pose.orientation.x, current_pose.pose.orientation.y, current_pose.pose.orientation.z,
                 current_pose.pose.orientation.w};
  }
  else
  {
    ROS_ERROR("Invalid goal");
    return;
  }

  // Sends a goal to the moveit API
  arm_move_group_.setJointValueTarget(arm_goal_);
  gripper_move_group_.setJointValueTarget(gripper_goal_);

  // blocking functions below, will return after the execution
  arm_move_group_.move();
  gripper_move_group_.move();

  // Make sure that no residual movement remains
  arm_move_group_.stop();
  gripper_move_group_.stop();

  // check that preempt has not been requested by the client
  if (as_.isPreemptRequested() || !ros::ok())
  {
    ROS_INFO("%s: Preempted", action_name_.c_str());
    as_.setPreempted();
    success = false;
  }

  // check if the goal request has been executed correctly
  if(success)
  {
    result_.success = true;
    ROS_INFO("%s: Succeeded", action_name_.c_str());
    as_.setSucceeded(result_);
  }
}



};


int main(int argc, char** argv)
{
  // Inizialize a ROS node called task_server
  ros::init(argc, argv, "task_server");
  TaskServer server("task_server");

  // keeps the node up and running
  ros::spin();
  return 0;
}