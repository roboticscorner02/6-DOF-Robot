;; Auto-generated. Do not edit!


(when (boundp 'robot1_remote::Robot1TaskResult)
  (if (not (find-package "ROBOT1_REMOTE"))
    (make-package "ROBOT1_REMOTE"))
  (shadow 'Robot1TaskResult (find-package "ROBOT1_REMOTE")))
(unless (find-package "ROBOT1_REMOTE::ROBOT1TASKRESULT")
  (make-package "ROBOT1_REMOTE::ROBOT1TASKRESULT"))

(in-package "ROS")
;;//! \htmlinclude Robot1TaskResult.msg.html


(defclass robot1_remote::Robot1TaskResult
  :super ros::object
  :slots (_success ))

(defmethod robot1_remote::Robot1TaskResult
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot1_remote::Robot1TaskResult :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get robot1_remote::Robot1TaskResult :datatype-) "robot1_remote/Robot1TaskResult")
(setf (get robot1_remote::Robot1TaskResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Result
bool success

")



(provide :robot1_remote/Robot1TaskResult "358e233cde0c8a8bcfea4ce193f8fc15")


