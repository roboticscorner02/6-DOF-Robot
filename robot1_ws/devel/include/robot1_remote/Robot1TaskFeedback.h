// Generated by gencpp from file robot1_remote/Robot1TaskFeedback.msg
// DO NOT EDIT!


#ifndef ROBOT1_REMOTE_MESSAGE_ROBOT1TASKFEEDBACK_H
#define ROBOT1_REMOTE_MESSAGE_ROBOT1TASKFEEDBACK_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot1_remote
{
template <class ContainerAllocator>
struct Robot1TaskFeedback_
{
  typedef Robot1TaskFeedback_<ContainerAllocator> Type;

  Robot1TaskFeedback_()
    : percentage(0)  {
    }
  Robot1TaskFeedback_(const ContainerAllocator& _alloc)
    : percentage(0)  {
  (void)_alloc;
    }



   typedef int64_t _percentage_type;
  _percentage_type percentage;





  typedef boost::shared_ptr< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct Robot1TaskFeedback_

typedef ::robot1_remote::Robot1TaskFeedback_<std::allocator<void> > Robot1TaskFeedback;

typedef boost::shared_ptr< ::robot1_remote::Robot1TaskFeedback > Robot1TaskFeedbackPtr;
typedef boost::shared_ptr< ::robot1_remote::Robot1TaskFeedback const> Robot1TaskFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator1> & lhs, const ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.percentage == rhs.percentage;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator1> & lhs, const ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot1_remote

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "face31f38d20abbde445df7aa912bb07";
  }

  static const char* value(const ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xface31f38d20abbdULL;
  static const uint64_t static_value2 = 0xe445df7aa912bb07ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot1_remote/Robot1TaskFeedback";
  }

  static const char* value(const ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Feedback\n"
"int64 percentage\n"
"\n"
;
  }

  static const char* value(const ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.percentage);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Robot1TaskFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot1_remote::Robot1TaskFeedback_<ContainerAllocator>& v)
  {
    s << indent << "percentage: ";
    Printer<int64_t>::stream(s, indent + "  ", v.percentage);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT1_REMOTE_MESSAGE_ROBOT1TASKFEEDBACK_H
