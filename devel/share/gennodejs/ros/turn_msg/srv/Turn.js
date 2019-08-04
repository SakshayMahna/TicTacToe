// Auto-generated. Do not edit!

// (in-package turn_msg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TurnRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.player = null;
      this.x = null;
      this.y = null;
    }
    else {
      if (initObj.hasOwnProperty('player')) {
        this.player = initObj.player
      }
      else {
        this.player = '';
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurnRequest
    // Serialize message field [player]
    bufferOffset = _serializer.string(obj.player, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.uint32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.uint32(obj.y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurnRequest
    let len;
    let data = new TurnRequest(null);
    // Deserialize message field [player]
    data.player = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.player.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turn_msg/TurnRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2beb48d2557e4b09391f744579a9fa96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string player
    uint32 x
    uint32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurnRequest(null);
    if (msg.player !== undefined) {
      resolved.player = msg.player;
    }
    else {
      resolved.player = ''
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0
    }

    return resolved;
    }
};

class TurnResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.r1 = null;
      this.r2 = null;
      this.r3 = null;
    }
    else {
      if (initObj.hasOwnProperty('r1')) {
        this.r1 = initObj.r1
      }
      else {
        this.r1 = [];
      }
      if (initObj.hasOwnProperty('r2')) {
        this.r2 = initObj.r2
      }
      else {
        this.r2 = [];
      }
      if (initObj.hasOwnProperty('r3')) {
        this.r3 = initObj.r3
      }
      else {
        this.r3 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurnResponse
    // Serialize message field [r1]
    bufferOffset = _arraySerializer.string(obj.r1, buffer, bufferOffset, null);
    // Serialize message field [r2]
    bufferOffset = _arraySerializer.string(obj.r2, buffer, bufferOffset, null);
    // Serialize message field [r3]
    bufferOffset = _arraySerializer.string(obj.r3, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurnResponse
    let len;
    let data = new TurnResponse(null);
    // Deserialize message field [r1]
    data.r1 = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [r2]
    data.r2 = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [r3]
    data.r3 = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.r1.forEach((val) => {
      length += 4 + val.length;
    });
    object.r2.forEach((val) => {
      length += 4 + val.length;
    });
    object.r3.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turn_msg/TurnResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3cf32a6ad698361ab7b30bf94888c1cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] r1
    string[] r2
    string[] r3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurnResponse(null);
    if (msg.r1 !== undefined) {
      resolved.r1 = msg.r1;
    }
    else {
      resolved.r1 = []
    }

    if (msg.r2 !== undefined) {
      resolved.r2 = msg.r2;
    }
    else {
      resolved.r2 = []
    }

    if (msg.r3 !== undefined) {
      resolved.r3 = msg.r3;
    }
    else {
      resolved.r3 = []
    }

    return resolved;
    }
};

module.exports = {
  Request: TurnRequest,
  Response: TurnResponse,
  md5sum() { return 'ac45d99ae4b575112e36047ef211fbe1'; },
  datatype() { return 'turn_msg/Turn'; }
};
