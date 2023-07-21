// Generated by gencpp from file beginner_tutorials/fibo.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_FIBO_H
#define BEGINNER_TUTORIALS_MESSAGE_FIBO_H

#include <ros/service_traits.h>


#include <beginner_tutorials/fiboRequest.h>
#include <beginner_tutorials/fiboResponse.h>


namespace beginner_tutorials
{

struct fibo
{

typedef fiboRequest Request;
typedef fiboResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct fibo
} // namespace beginner_tutorials


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::beginner_tutorials::fibo > {
  static const char* value()
  {
    return "f16097f93022db785b2cc9436c158893";
  }

  static const char* value(const ::beginner_tutorials::fibo&) { return value(); }
};

template<>
struct DataType< ::beginner_tutorials::fibo > {
  static const char* value()
  {
    return "beginner_tutorials/fibo";
  }

  static const char* value(const ::beginner_tutorials::fibo&) { return value(); }
};


// service_traits::MD5Sum< ::beginner_tutorials::fiboRequest> should match
// service_traits::MD5Sum< ::beginner_tutorials::fibo >
template<>
struct MD5Sum< ::beginner_tutorials::fiboRequest>
{
  static const char* value()
  {
    return MD5Sum< ::beginner_tutorials::fibo >::value();
  }
  static const char* value(const ::beginner_tutorials::fiboRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::beginner_tutorials::fiboRequest> should match
// service_traits::DataType< ::beginner_tutorials::fibo >
template<>
struct DataType< ::beginner_tutorials::fiboRequest>
{
  static const char* value()
  {
    return DataType< ::beginner_tutorials::fibo >::value();
  }
  static const char* value(const ::beginner_tutorials::fiboRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::beginner_tutorials::fiboResponse> should match
// service_traits::MD5Sum< ::beginner_tutorials::fibo >
template<>
struct MD5Sum< ::beginner_tutorials::fiboResponse>
{
  static const char* value()
  {
    return MD5Sum< ::beginner_tutorials::fibo >::value();
  }
  static const char* value(const ::beginner_tutorials::fiboResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::beginner_tutorials::fiboResponse> should match
// service_traits::DataType< ::beginner_tutorials::fibo >
template<>
struct DataType< ::beginner_tutorials::fiboResponse>
{
  static const char* value()
  {
    return DataType< ::beginner_tutorials::fibo >::value();
  }
  static const char* value(const ::beginner_tutorials::fiboResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_FIBO_H
