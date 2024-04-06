;; Auto-generated. Do not edit!


(when (boundp 'robot1_controller::AnglesConverter)
  (if (not (find-package "ROBOT1_CONTROLLER"))
    (make-package "ROBOT1_CONTROLLER"))
  (shadow 'AnglesConverter (find-package "ROBOT1_CONTROLLER")))
(unless (find-package "ROBOT1_CONTROLLER::ANGLESCONVERTER")
  (make-package "ROBOT1_CONTROLLER::ANGLESCONVERTER"))
(unless (find-package "ROBOT1_CONTROLLER::ANGLESCONVERTERREQUEST")
  (make-package "ROBOT1_CONTROLLER::ANGLESCONVERTERREQUEST"))
(unless (find-package "ROBOT1_CONTROLLER::ANGLESCONVERTERRESPONSE")
  (make-package "ROBOT1_CONTROLLER::ANGLESCONVERTERRESPONSE"))

(in-package "ROS")





(defclass robot1_controller::AnglesConverterRequest
  :super ros::object
  :slots (_base _holder1 _bracket1 _holder2 _bracket2 _gripper ))

(defmethod robot1_controller::AnglesConverterRequest
  (:init
   (&key
    ((:base __base) 0.0)
    ((:holder1 __holder1) 0.0)
    ((:bracket1 __bracket1) 0.0)
    ((:holder2 __holder2) 0.0)
    ((:bracket2 __bracket2) 0.0)
    ((:gripper __gripper) 0.0)
    )
   (send-super :init)
   (setq _base (float __base))
   (setq _holder1 (float __holder1))
   (setq _bracket1 (float __bracket1))
   (setq _holder2 (float __holder2))
   (setq _bracket2 (float __bracket2))
   (setq _gripper (float __gripper))
   self)
  (:base
   (&optional __base)
   (if __base (setq _base __base)) _base)
  (:holder1
   (&optional __holder1)
   (if __holder1 (setq _holder1 __holder1)) _holder1)
  (:bracket1
   (&optional __bracket1)
   (if __bracket1 (setq _bracket1 __bracket1)) _bracket1)
  (:holder2
   (&optional __holder2)
   (if __holder2 (setq _holder2 __holder2)) _holder2)
  (:bracket2
   (&optional __bracket2)
   (if __bracket2 (setq _bracket2 __bracket2)) _bracket2)
  (:gripper
   (&optional __gripper)
   (if __gripper (setq _gripper __gripper)) _gripper)
  (:serialization-length
   ()
   (+
    ;; float64 _base
    8
    ;; float64 _holder1
    8
    ;; float64 _bracket1
    8
    ;; float64 _holder2
    8
    ;; float64 _bracket2
    8
    ;; float64 _gripper
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _base
       (sys::poke _base (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _holder1
       (sys::poke _holder1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bracket1
       (sys::poke _bracket1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _holder2
       (sys::poke _holder2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bracket2
       (sys::poke _bracket2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gripper
       (sys::poke _gripper (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _base
     (setq _base (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _holder1
     (setq _holder1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bracket1
     (setq _bracket1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _holder2
     (setq _holder2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bracket2
     (setq _bracket2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gripper
     (setq _gripper (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass robot1_controller::AnglesConverterResponse
  :super ros::object
  :slots (_base _holder1 _bracket1 _holder2 _bracket2 _gripper ))

(defmethod robot1_controller::AnglesConverterResponse
  (:init
   (&key
    ((:base __base) 0.0)
    ((:holder1 __holder1) 0.0)
    ((:bracket1 __bracket1) 0.0)
    ((:holder2 __holder2) 0.0)
    ((:bracket2 __bracket2) 0.0)
    ((:gripper __gripper) 0.0)
    )
   (send-super :init)
   (setq _base (float __base))
   (setq _holder1 (float __holder1))
   (setq _bracket1 (float __bracket1))
   (setq _holder2 (float __holder2))
   (setq _bracket2 (float __bracket2))
   (setq _gripper (float __gripper))
   self)
  (:base
   (&optional __base)
   (if __base (setq _base __base)) _base)
  (:holder1
   (&optional __holder1)
   (if __holder1 (setq _holder1 __holder1)) _holder1)
  (:bracket1
   (&optional __bracket1)
   (if __bracket1 (setq _bracket1 __bracket1)) _bracket1)
  (:holder2
   (&optional __holder2)
   (if __holder2 (setq _holder2 __holder2)) _holder2)
  (:bracket2
   (&optional __bracket2)
   (if __bracket2 (setq _bracket2 __bracket2)) _bracket2)
  (:gripper
   (&optional __gripper)
   (if __gripper (setq _gripper __gripper)) _gripper)
  (:serialization-length
   ()
   (+
    ;; float64 _base
    8
    ;; float64 _holder1
    8
    ;; float64 _bracket1
    8
    ;; float64 _holder2
    8
    ;; float64 _bracket2
    8
    ;; float64 _gripper
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _base
       (sys::poke _base (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _holder1
       (sys::poke _holder1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bracket1
       (sys::poke _bracket1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _holder2
       (sys::poke _holder2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bracket2
       (sys::poke _bracket2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gripper
       (sys::poke _gripper (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _base
     (setq _base (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _holder1
     (setq _holder1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bracket1
     (setq _bracket1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _holder2
     (setq _holder2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bracket2
     (setq _bracket2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gripper
     (setq _gripper (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass robot1_controller::AnglesConverter
  :super ros::object
  :slots ())

(setf (get robot1_controller::AnglesConverter :md5sum-) "520baf98315cffffbe617b7c68675a94")
(setf (get robot1_controller::AnglesConverter :datatype-) "robot1_controller/AnglesConverter")
(setf (get robot1_controller::AnglesConverter :request) robot1_controller::AnglesConverterRequest)
(setf (get robot1_controller::AnglesConverter :response) robot1_controller::AnglesConverterResponse)

(defmethod robot1_controller::AnglesConverterRequest
  (:response () (instance robot1_controller::AnglesConverterResponse :init)))

(setf (get robot1_controller::AnglesConverterRequest :md5sum-) "520baf98315cffffbe617b7c68675a94")
(setf (get robot1_controller::AnglesConverterRequest :datatype-) "robot1_controller/AnglesConverterRequest")
(setf (get robot1_controller::AnglesConverterRequest :definition-)
      "# Request
float64 base
float64 holder1
float64 bracket1
float64 holder2
float64 bracket2
float64 gripper
---
# Response
float64 base
float64 holder1
float64 bracket1
float64 holder2
float64 bracket2
float64 gripper
")

(setf (get robot1_controller::AnglesConverterResponse :md5sum-) "520baf98315cffffbe617b7c68675a94")
(setf (get robot1_controller::AnglesConverterResponse :datatype-) "robot1_controller/AnglesConverterResponse")
(setf (get robot1_controller::AnglesConverterResponse :definition-)
      "# Request
float64 base
float64 holder1
float64 bracket1
float64 holder2
float64 bracket2
float64 gripper
---
# Response
float64 base
float64 holder1
float64 bracket1
float64 holder2
float64 bracket2
float64 gripper
")



(provide :robot1_controller/AnglesConverter "520baf98315cffffbe617b7c68675a94")


