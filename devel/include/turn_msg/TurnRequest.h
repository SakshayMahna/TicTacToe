// Generated by gencpp from file turn_msg/TurnRequest.msg
// DO NOT EDIT!


#ifndef TURN_MSG_MESSAGE_TURNREQUEST_H
#define TURN_MSG_MESSAGE_TURNREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace turn_msg
{
template <class ContainerAllocator>
struct TurnRequest_
{
  typedef TurnRequest_<ContainerAllocator> Type;

  TurnRequest_()
    : player()
    , x(0)
    , y(0)  {
    }
  TurnRequest_(const ContainerAllocator& _alloc)
    : player(_alloc)
    , x(0)
    , y(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _player_type;
  _player_type player;

   typedef uint32_t _x_type;
  _x_type x;

   typedef uint32_t _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::turn_msg::TurnRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turn_msg::TurnRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TurnRequest_

typedef ::turn_msg::TurnRequest_<std::allocator<void> > TurnRequest;

typedef boost::shared_ptr< ::turn_msg::TurnRequest > TurnRequestPtr;
typedef boost::shared_ptr< ::turn_msg::TurnRequest const> TurnRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turn_msg::TurnRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turn_msg::TurnRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace turn_msg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::turn_msg::TurnRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turn_msg::TurnRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turn_msg::TurnRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turn_msg::TurnRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turn_msg::TurnRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turn_msg::TurnRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turn_msg::TurnRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2beb48d2557e4b09391f744579a9fa96";
  }

  static const char* value(const ::turn_msg::TurnRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2beb48d2557e4b09ULL;
  static const uint64_t static_value2 = 0x391f744579a9fa96ULL;
};

template<class ContainerAllocator>
struct DataType< ::turn_msg::TurnRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turn_msg/TurnRequest";
  }

  static const char* value(const ::turn_msg::TurnRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turn_msg::TurnRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string player\n\
uint32 x\n\
uint32 y\n\
";
  }

  static const char* value(const ::turn_msg::TurnRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turn_msg::TurnRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.player);
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TurnRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turn_msg::TurnRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turn_msg::TurnRequest_<ContainerAllocator>& v)
  {
    s << indent << "player: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.player);
    s << indent << "x: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURN_MSG_MESSAGE_TURNREQUEST_H