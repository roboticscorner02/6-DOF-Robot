// Generated by gencpp from file robot1_remote/Robot1TaskActionResult.msg
// DO NOT EDIT!


#ifndef ROBOT1_REMOTE_MESSAGE_ROBOT1TASKACTIONRESULT_H
#define ROBOT1_REMOTE_MESSAGE_ROBOT1TASKACTIONRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalStatus.h>
#include <robot1_remote/Robot1TaskResult.h>

namespace robot1_remote
{
template <class ContainerAllocator>
struct Robot1TaskActionResult_
{
  typedef Robot1TaskActionResult_<ContainerAllocator> Type;

  Robot1TaskActionResult_()
    : header()
    , status()
    , result()  {
    }
  Robot1TaskActionResult_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , status(_alloc)
    , result(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalStatus_<ContainerAllocator>  _status_type;
  _status_type status;

   typedef  ::robot1_remote::Robot1TaskResult_<ContainerAllocator>  _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> const> ConstPtr;

}; // struct Robot1TaskActionResult_

typedef ::robot1_remote::Robot1TaskActionResult_<std::allocator<void> > Robot1TaskActionResult;

typedef boost::shared_ptr< ::robot1_remote::Robot1TaskActionResult > Robot1TaskActionResultPtr;
typedef boost::shared_ptr< ::robot1_remote::Robot1TaskActionResult const> Robot1TaskActionResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator1> & lhs, const ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.status == rhs.status &&
    lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator1> & lhs, const ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot1_remote

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0698ce25b2d595b82357c010557e935f";
  }

  static const char* value(const ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0698ce25b2d595b8ULL;
  static const uint64_t static_value2 = 0x2357c010557e935fULL;
};

template<class ContainerAllocator>
struct DataType< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot1_remote/Robot1TaskActionResult";
  }

  static const char* value(const ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"Robot1TaskResult result\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: robot1_remote/Robot1TaskResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Result\n"
"bool success\n"
;
  }

  static const char* value(const ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.status);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Robot1TaskActionResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot1_remote::Robot1TaskActionResult_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "result: ";
    s << std::endl;
    Printer< ::robot1_remote::Robot1TaskResult_<ContainerAllocator> >::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT1_REMOTE_MESSAGE_ROBOT1TASKACTIONRESULT_H
