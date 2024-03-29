// Generated by gencpp from file turn_msg/Turn.msg
// DO NOT EDIT!


#ifndef TURN_MSG_MESSAGE_TURN_H
#define TURN_MSG_MESSAGE_TURN_H

#include <ros/service_traits.h>


#include <turn_msg/TurnRequest.h>
#include <turn_msg/TurnResponse.h>


namespace turn_msg
{

struct Turn
{

typedef TurnRequest Request;
typedef TurnResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Turn
} // namespace turn_msg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::turn_msg::Turn > {
  static const char* value()
  {
    return "ac45d99ae4b575112e36047ef211fbe1";
  }

  static const char* value(const ::turn_msg::Turn&) { return value(); }
};

template<>
struct DataType< ::turn_msg::Turn > {
  static const char* value()
  {
    return "turn_msg/Turn";
  }

  static const char* value(const ::turn_msg::Turn&) { return value(); }
};


// service_traits::MD5Sum< ::turn_msg::TurnRequest> should match 
// service_traits::MD5Sum< ::turn_msg::Turn > 
template<>
struct MD5Sum< ::turn_msg::TurnRequest>
{
  static const char* value()
  {
    return MD5Sum< ::turn_msg::Turn >::value();
  }
  static const char* value(const ::turn_msg::TurnRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::turn_msg::TurnRequest> should match 
// service_traits::DataType< ::turn_msg::Turn > 
template<>
struct DataType< ::turn_msg::TurnRequest>
{
  static const char* value()
  {
    return DataType< ::turn_msg::Turn >::value();
  }
  static const char* value(const ::turn_msg::TurnRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::turn_msg::TurnResponse> should match 
// service_traits::MD5Sum< ::turn_msg::Turn > 
template<>
struct MD5Sum< ::turn_msg::TurnResponse>
{
  static const char* value()
  {
    return MD5Sum< ::turn_msg::Turn >::value();
  }
  static const char* value(const ::turn_msg::TurnResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::turn_msg::TurnResponse> should match 
// service_traits::DataType< ::turn_msg::Turn > 
template<>
struct DataType< ::turn_msg::TurnResponse>
{
  static const char* value()
  {
    return DataType< ::turn_msg::Turn >::value();
  }
  static const char* value(const ::turn_msg::TurnResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TURN_MSG_MESSAGE_TURN_H
