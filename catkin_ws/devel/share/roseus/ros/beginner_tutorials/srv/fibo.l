;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::fibo)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'fibo (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::FIBO")
  (make-package "BEGINNER_TUTORIALS::FIBO"))
(unless (find-package "BEGINNER_TUTORIALS::FIBOREQUEST")
  (make-package "BEGINNER_TUTORIALS::FIBOREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::FIBORESPONSE")
  (make-package "BEGINNER_TUTORIALS::FIBORESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::fiboRequest
  :super ros::object
  :slots (_a ))

(defmethod beginner_tutorials::fiboRequest
  (:init
   (&key
    ((:a __a) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass beginner_tutorials::fiboResponse
  :super ros::object
  :slots (_b ))

(defmethod beginner_tutorials::fiboResponse
  (:init
   (&key
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _b (round __b))
   self)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass beginner_tutorials::fibo
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::fibo :md5sum-) "f16097f93022db785b2cc9436c158893")
(setf (get beginner_tutorials::fibo :datatype-) "beginner_tutorials/fibo")
(setf (get beginner_tutorials::fibo :request) beginner_tutorials::fiboRequest)
(setf (get beginner_tutorials::fibo :response) beginner_tutorials::fiboResponse)

(defmethod beginner_tutorials::fiboRequest
  (:response () (instance beginner_tutorials::fiboResponse :init)))

(setf (get beginner_tutorials::fiboRequest :md5sum-) "f16097f93022db785b2cc9436c158893")
(setf (get beginner_tutorials::fiboRequest :datatype-) "beginner_tutorials/fiboRequest")
(setf (get beginner_tutorials::fiboRequest :definition-)
      "int64 a
---
int64 b

")

(setf (get beginner_tutorials::fiboResponse :md5sum-) "f16097f93022db785b2cc9436c158893")
(setf (get beginner_tutorials::fiboResponse :datatype-) "beginner_tutorials/fiboResponse")
(setf (get beginner_tutorials::fiboResponse :definition-)
      "int64 a
---
int64 b

")



(provide :beginner_tutorials/fibo "f16097f93022db785b2cc9436c158893")


