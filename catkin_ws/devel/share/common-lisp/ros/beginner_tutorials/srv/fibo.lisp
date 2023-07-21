; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude fibo-request.msg.html

(cl:defclass <fibo-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0))
)

(cl:defclass fibo-request (<fibo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fibo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fibo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<fibo-request> is deprecated: use beginner_tutorials-srv:fibo-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <fibo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:a-val is deprecated.  Use beginner_tutorials-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fibo-request>) ostream)
  "Serializes a message object of type '<fibo-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fibo-request>) istream)
  "Deserializes a message object of type '<fibo-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fibo-request>)))
  "Returns string type for a service object of type '<fibo-request>"
  "beginner_tutorials/fiboRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fibo-request)))
  "Returns string type for a service object of type 'fibo-request"
  "beginner_tutorials/fiboRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fibo-request>)))
  "Returns md5sum for a message object of type '<fibo-request>"
  "f16097f93022db785b2cc9436c158893")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fibo-request)))
  "Returns md5sum for a message object of type 'fibo-request"
  "f16097f93022db785b2cc9436c158893")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fibo-request>)))
  "Returns full string definition for message of type '<fibo-request>"
  (cl:format cl:nil "int64 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fibo-request)))
  "Returns full string definition for message of type 'fibo-request"
  (cl:format cl:nil "int64 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fibo-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fibo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'fibo-request
    (cl:cons ':a (a msg))
))
;//! \htmlinclude fibo-response.msg.html

(cl:defclass <fibo-response> (roslisp-msg-protocol:ros-message)
  ((b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass fibo-response (<fibo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fibo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fibo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<fibo-response> is deprecated: use beginner_tutorials-srv:fibo-response instead.")))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <fibo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:b-val is deprecated.  Use beginner_tutorials-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fibo-response>) ostream)
  "Serializes a message object of type '<fibo-response>"
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fibo-response>) istream)
  "Deserializes a message object of type '<fibo-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fibo-response>)))
  "Returns string type for a service object of type '<fibo-response>"
  "beginner_tutorials/fiboResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fibo-response)))
  "Returns string type for a service object of type 'fibo-response"
  "beginner_tutorials/fiboResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fibo-response>)))
  "Returns md5sum for a message object of type '<fibo-response>"
  "f16097f93022db785b2cc9436c158893")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fibo-response)))
  "Returns md5sum for a message object of type 'fibo-response"
  "f16097f93022db785b2cc9436c158893")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fibo-response>)))
  "Returns full string definition for message of type '<fibo-response>"
  (cl:format cl:nil "int64 b~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fibo-response)))
  "Returns full string definition for message of type 'fibo-response"
  (cl:format cl:nil "int64 b~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fibo-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fibo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'fibo-response
    (cl:cons ':b (b msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'fibo)))
  'fibo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'fibo)))
  'fibo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fibo)))
  "Returns string type for a service object of type '<fibo>"
  "beginner_tutorials/fibo")