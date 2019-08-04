; Auto-generated. Do not edit!


(cl:in-package turn_msg-srv)


;//! \htmlinclude Turn-request.msg.html

(cl:defclass <Turn-request> (roslisp-msg-protocol:ros-message)
  ((player
    :reader player
    :initarg :player
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass Turn-request (<Turn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Turn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Turn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turn_msg-srv:<Turn-request> is deprecated: use turn_msg-srv:Turn-request instead.")))

(cl:ensure-generic-function 'player-val :lambda-list '(m))
(cl:defmethod player-val ((m <Turn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_msg-srv:player-val is deprecated.  Use turn_msg-srv:player instead.")
  (player m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Turn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_msg-srv:x-val is deprecated.  Use turn_msg-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Turn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_msg-srv:y-val is deprecated.  Use turn_msg-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Turn-request>) ostream)
  "Serializes a message object of type '<Turn-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'player))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'player))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'y)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Turn-request>) istream)
  "Deserializes a message object of type '<Turn-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'player) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'player) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'y)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Turn-request>)))
  "Returns string type for a service object of type '<Turn-request>"
  "turn_msg/TurnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Turn-request)))
  "Returns string type for a service object of type 'Turn-request"
  "turn_msg/TurnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Turn-request>)))
  "Returns md5sum for a message object of type '<Turn-request>"
  "ac45d99ae4b575112e36047ef211fbe1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Turn-request)))
  "Returns md5sum for a message object of type 'Turn-request"
  "ac45d99ae4b575112e36047ef211fbe1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Turn-request>)))
  "Returns full string definition for message of type '<Turn-request>"
  (cl:format cl:nil "string player~%uint32 x~%uint32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Turn-request)))
  "Returns full string definition for message of type 'Turn-request"
  (cl:format cl:nil "string player~%uint32 x~%uint32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Turn-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'player))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Turn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Turn-request
    (cl:cons ':player (player msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude Turn-response.msg.html

(cl:defclass <Turn-response> (roslisp-msg-protocol:ros-message)
  ((r1
    :reader r1
    :initarg :r1
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (r2
    :reader r2
    :initarg :r2
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (r3
    :reader r3
    :initarg :r3
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Turn-response (<Turn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Turn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Turn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turn_msg-srv:<Turn-response> is deprecated: use turn_msg-srv:Turn-response instead.")))

(cl:ensure-generic-function 'r1-val :lambda-list '(m))
(cl:defmethod r1-val ((m <Turn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_msg-srv:r1-val is deprecated.  Use turn_msg-srv:r1 instead.")
  (r1 m))

(cl:ensure-generic-function 'r2-val :lambda-list '(m))
(cl:defmethod r2-val ((m <Turn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_msg-srv:r2-val is deprecated.  Use turn_msg-srv:r2 instead.")
  (r2 m))

(cl:ensure-generic-function 'r3-val :lambda-list '(m))
(cl:defmethod r3-val ((m <Turn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turn_msg-srv:r3-val is deprecated.  Use turn_msg-srv:r3 instead.")
  (r3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Turn-response>) ostream)
  "Serializes a message object of type '<Turn-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'r1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'r1))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'r2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'r2))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'r3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'r3))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Turn-response>) istream)
  "Deserializes a message object of type '<Turn-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'r1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'r1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'r2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'r2)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'r3) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'r3)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Turn-response>)))
  "Returns string type for a service object of type '<Turn-response>"
  "turn_msg/TurnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Turn-response)))
  "Returns string type for a service object of type 'Turn-response"
  "turn_msg/TurnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Turn-response>)))
  "Returns md5sum for a message object of type '<Turn-response>"
  "ac45d99ae4b575112e36047ef211fbe1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Turn-response)))
  "Returns md5sum for a message object of type 'Turn-response"
  "ac45d99ae4b575112e36047ef211fbe1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Turn-response>)))
  "Returns full string definition for message of type '<Turn-response>"
  (cl:format cl:nil "string[] r1~%string[] r2~%string[] r3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Turn-response)))
  "Returns full string definition for message of type 'Turn-response"
  (cl:format cl:nil "string[] r1~%string[] r2~%string[] r3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Turn-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'r1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'r2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'r3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Turn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Turn-response
    (cl:cons ':r1 (r1 msg))
    (cl:cons ':r2 (r2 msg))
    (cl:cons ':r3 (r3 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Turn)))
  'Turn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Turn)))
  'Turn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Turn)))
  "Returns string type for a service object of type '<Turn>"
  "turn_msg/Turn")