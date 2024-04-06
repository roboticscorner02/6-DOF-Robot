
(cl:in-package :asdf)

(defsystem "robot1_remote-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Robot1TaskAction" :depends-on ("_package_Robot1TaskAction"))
    (:file "_package_Robot1TaskAction" :depends-on ("_package"))
    (:file "Robot1TaskActionFeedback" :depends-on ("_package_Robot1TaskActionFeedback"))
    (:file "_package_Robot1TaskActionFeedback" :depends-on ("_package"))
    (:file "Robot1TaskActionGoal" :depends-on ("_package_Robot1TaskActionGoal"))
    (:file "_package_Robot1TaskActionGoal" :depends-on ("_package"))
    (:file "Robot1TaskActionResult" :depends-on ("_package_Robot1TaskActionResult"))
    (:file "_package_Robot1TaskActionResult" :depends-on ("_package"))
    (:file "Robot1TaskFeedback" :depends-on ("_package_Robot1TaskFeedback"))
    (:file "_package_Robot1TaskFeedback" :depends-on ("_package"))
    (:file "Robot1TaskGoal" :depends-on ("_package_Robot1TaskGoal"))
    (:file "_package_Robot1TaskGoal" :depends-on ("_package"))
    (:file "Robot1TaskResult" :depends-on ("_package_Robot1TaskResult"))
    (:file "_package_Robot1TaskResult" :depends-on ("_package"))
  ))