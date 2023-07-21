// Generated by gencpp from file beginner_tutorials/fiboRequest.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_FIBOREQUEST_H
#define BEGINNER_TUTORIALS_MESSAGE_FIBOREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct fiboRequest_
{
  typedef fiboRequest_<ContainerAllocator> Type;

  fiboRequest_()
    : a(0)  {
    }
  fiboRequest_(const ContainerAllocator& _alloc)
    : a(0)  {
  (void)_alloc;
    }



   typedef int64_t _a_type;
  _a_type a;





  typedef boost::shared_ptr< ::beginner_tutorials::fiboRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::fiboRequest_<ContainerAllocator> const> ConstPtr;

}; // struct fiboRequest_

typedef ::beginner_tutorials::fiboRequest_<std::allocator<void> > fiboRequest;

typedef boost::shared_ptr< ::beginner_tutorials::fiboRequest > fiboRequestPtr;
typedef boost::shared_ptr< ::beginner_tutorials::fiboRequest const> fiboRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::fiboRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::fiboRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beginner_tutorials::fiboRequest_<ContainerAllocator1> & lhs, const ::beginner_tutorials::fiboRequest_<ContainerAllocator2> & rhs)
{
  return lhs.a == rhs.a;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beginner_tutorials::fiboRequest_<ContainerAllocator1> & lhs, const ::beginner_tutorials::fiboRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::fiboRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::fiboRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::fiboRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::fiboRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::fiboRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::fiboRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::fiboRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "019706110004b728d56d8baaa8e32797";
  }

  static const char* value(const ::beginner_tutorials::fiboRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x019706110004b728ULL;
  static const uint64_t static_value2 = 0xd56d8baaa8e32797ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::fiboRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/fiboRequest";
  }

  static const char* value(const ::beginner_tutorials::fiboRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::fiboRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 a\n"
;
  }

  static const char* value(const ::beginner_tutorials::fiboRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::fiboRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct fiboRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::fiboRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::fiboRequest_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    Printer<int64_t>::stream(s, indent + "  ", v.a);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_FIBOREQUEST_H
