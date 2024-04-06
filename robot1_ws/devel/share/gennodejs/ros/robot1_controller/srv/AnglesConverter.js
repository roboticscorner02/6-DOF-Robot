// Auto-generated. Do not edit!

// (in-package robot1_controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AnglesConverterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.base = null;
      this.holder1 = null;
      this.bracket1 = null;
      this.holder2 = null;
      this.bracket2 = null;
      this.gripper = null;
    }
    else {
      if (initObj.hasOwnProperty('base')) {
        this.base = initObj.base
      }
      else {
        this.base = 0.0;
      }
      if (initObj.hasOwnProperty('holder1')) {
        this.holder1 = initObj.holder1
      }
      else {
        this.holder1 = 0.0;
      }
      if (initObj.hasOwnProperty('bracket1')) {
        this.bracket1 = initObj.bracket1
      }
      else {
        this.bracket1 = 0.0;
      }
      if (initObj.hasOwnProperty('holder2')) {
        this.holder2 = initObj.holder2
      }
      else {
        this.holder2 = 0.0;
      }
      if (initObj.hasOwnProperty('bracket2')) {
        this.bracket2 = initObj.bracket2
      }
      else {
        this.bracket2 = 0.0;
      }
      if (initObj.hasOwnProperty('gripper')) {
        this.gripper = initObj.gripper
      }
      else {
        this.gripper = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnglesConverterRequest
    // Serialize message field [base]
    bufferOffset = _serializer.float64(obj.base, buffer, bufferOffset);
    // Serialize message field [holder1]
    bufferOffset = _serializer.float64(obj.holder1, buffer, bufferOffset);
    // Serialize message field [bracket1]
    bufferOffset = _serializer.float64(obj.bracket1, buffer, bufferOffset);
    // Serialize message field [holder2]
    bufferOffset = _serializer.float64(obj.holder2, buffer, bufferOffset);
    // Serialize message field [bracket2]
    bufferOffset = _serializer.float64(obj.bracket2, buffer, bufferOffset);
    // Serialize message field [gripper]
    bufferOffset = _serializer.float64(obj.gripper, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnglesConverterRequest
    let len;
    let data = new AnglesConverterRequest(null);
    // Deserialize message field [base]
    data.base = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [holder1]
    data.holder1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bracket1]
    data.bracket1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [holder2]
    data.holder2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bracket2]
    data.bracket2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gripper]
    data.gripper = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot1_controller/AnglesConverterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '100c1ba176134904b4afc3cab2bea2ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request
    float64 base
    float64 holder1
    float64 bracket1
    float64 holder2
    float64 bracket2
    float64 gripper
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnglesConverterRequest(null);
    if (msg.base !== undefined) {
      resolved.base = msg.base;
    }
    else {
      resolved.base = 0.0
    }

    if (msg.holder1 !== undefined) {
      resolved.holder1 = msg.holder1;
    }
    else {
      resolved.holder1 = 0.0
    }

    if (msg.bracket1 !== undefined) {
      resolved.bracket1 = msg.bracket1;
    }
    else {
      resolved.bracket1 = 0.0
    }

    if (msg.holder2 !== undefined) {
      resolved.holder2 = msg.holder2;
    }
    else {
      resolved.holder2 = 0.0
    }

    if (msg.bracket2 !== undefined) {
      resolved.bracket2 = msg.bracket2;
    }
    else {
      resolved.bracket2 = 0.0
    }

    if (msg.gripper !== undefined) {
      resolved.gripper = msg.gripper;
    }
    else {
      resolved.gripper = 0.0
    }

    return resolved;
    }
};

class AnglesConverterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.base = null;
      this.holder1 = null;
      this.bracket1 = null;
      this.holder2 = null;
      this.bracket2 = null;
      this.gripper = null;
    }
    else {
      if (initObj.hasOwnProperty('base')) {
        this.base = initObj.base
      }
      else {
        this.base = 0.0;
      }
      if (initObj.hasOwnProperty('holder1')) {
        this.holder1 = initObj.holder1
      }
      else {
        this.holder1 = 0.0;
      }
      if (initObj.hasOwnProperty('bracket1')) {
        this.bracket1 = initObj.bracket1
      }
      else {
        this.bracket1 = 0.0;
      }
      if (initObj.hasOwnProperty('holder2')) {
        this.holder2 = initObj.holder2
      }
      else {
        this.holder2 = 0.0;
      }
      if (initObj.hasOwnProperty('bracket2')) {
        this.bracket2 = initObj.bracket2
      }
      else {
        this.bracket2 = 0.0;
      }
      if (initObj.hasOwnProperty('gripper')) {
        this.gripper = initObj.gripper
      }
      else {
        this.gripper = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnglesConverterResponse
    // Serialize message field [base]
    bufferOffset = _serializer.float64(obj.base, buffer, bufferOffset);
    // Serialize message field [holder1]
    bufferOffset = _serializer.float64(obj.holder1, buffer, bufferOffset);
    // Serialize message field [bracket1]
    bufferOffset = _serializer.float64(obj.bracket1, buffer, bufferOffset);
    // Serialize message field [holder2]
    bufferOffset = _serializer.float64(obj.holder2, buffer, bufferOffset);
    // Serialize message field [bracket2]
    bufferOffset = _serializer.float64(obj.bracket2, buffer, bufferOffset);
    // Serialize message field [gripper]
    bufferOffset = _serializer.float64(obj.gripper, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnglesConverterResponse
    let len;
    let data = new AnglesConverterResponse(null);
    // Deserialize message field [base]
    data.base = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [holder1]
    data.holder1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bracket1]
    data.bracket1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [holder2]
    data.holder2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bracket2]
    data.bracket2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gripper]
    data.gripper = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot1_controller/AnglesConverterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '100c1ba176134904b4afc3cab2bea2ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Response
    float64 base
    float64 holder1
    float64 bracket1
    float64 holder2
    float64 bracket2
    float64 gripper
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnglesConverterResponse(null);
    if (msg.base !== undefined) {
      resolved.base = msg.base;
    }
    else {
      resolved.base = 0.0
    }

    if (msg.holder1 !== undefined) {
      resolved.holder1 = msg.holder1;
    }
    else {
      resolved.holder1 = 0.0
    }

    if (msg.bracket1 !== undefined) {
      resolved.bracket1 = msg.bracket1;
    }
    else {
      resolved.bracket1 = 0.0
    }

    if (msg.holder2 !== undefined) {
      resolved.holder2 = msg.holder2;
    }
    else {
      resolved.holder2 = 0.0
    }

    if (msg.bracket2 !== undefined) {
      resolved.bracket2 = msg.bracket2;
    }
    else {
      resolved.bracket2 = 0.0
    }

    if (msg.gripper !== undefined) {
      resolved.gripper = msg.gripper;
    }
    else {
      resolved.gripper = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: AnglesConverterRequest,
  Response: AnglesConverterResponse,
  md5sum() { return '520baf98315cffffbe617b7c68675a94'; },
  datatype() { return 'robot1_controller/AnglesConverter'; }
};
