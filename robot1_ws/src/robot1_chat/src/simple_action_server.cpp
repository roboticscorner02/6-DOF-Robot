#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <robot1_chat/FibonacciAction.h>


class FibonacciActionServer
{
public:
  ros::NodeHandle nh_;
  actionlib::SimpleActionServer<robot1_chat::FibonacciAction> as_; 
  std::string action_name_;
  // create messages that are used to published feedback/result
  robot1_chat::FibonacciFeedback feedback_;
  robot1_chat::FibonacciResult result_;

  FibonacciActionServer(std::string name) :
    as_(nh_, name, boost::bind(&FibonacciActionServer::executeCB, this, _1), false),
    action_name_(name)
  {
    as_.start();
    ROS_INFO("Simple Action Server Started");
  }

  void executeCB(const robot1_chat::FibonacciGoalConstPtr &goal)
  {
    ROS_INFO("Goal Received %i", goal->order);

    // helper variables
    ros::Rate r(1);
    bool success = true;

    // push_back the seeds for the fibonacci sequence
    feedback_.sequence.clear();
    feedback_.sequence.push_back(1);
    feedback_.sequence.push_back(1);

    // start executing the action
    for(int i=1; i<=(goal->order-1); i++)
    {
      // check that preempt has not been requested by the client
      if (as_.isPreemptRequested() || !ros::ok())
      {
        ROS_INFO("%s: Preempted", action_name_.c_str());
        // set the action state to preempted
        as_.setPreempted();
        success = false;
        break;
      }
      feedback_.sequence.push_back(feedback_.sequence[i] + feedback_.sequence[i-1]);
      // publish the feedback
      as_.publishFeedback(feedback_);
      // this sleep is not necessary, the sequence is computed at 1 Hz for demonstration purposes
      r.sleep();
    }

    if(success)
    {
      result_.sequence = feedback_.sequence;
      ROS_INFO("%s: Succeeded", action_name_.c_str());
      // set the action state to succeeded
      as_.setSucceeded(result_);
    }
  }


};


int main(int argc, char** argv)
{
  ros::init(argc, argv, "fibonacci");

  FibonacciActionServer fibonacci("fibonacci");
  ros::spin();

  return 0;
}