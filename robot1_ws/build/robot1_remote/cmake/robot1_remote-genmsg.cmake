# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot1_remote: 7 messages, 0 services")

set(MSG_I_FLAGS "-Irobot1_remote:/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot1_remote_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskAction.msg" NAME_WE)
add_custom_target(_robot1_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot1_remote" "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskAction.msg" "robot1_remote/Robot1TaskActionResult:std_msgs/Header:actionlib_msgs/GoalID:robot1_remote/Robot1TaskActionGoal:robot1_remote/Robot1TaskActionFeedback:robot1_remote/Robot1TaskGoal:actionlib_msgs/GoalStatus:robot1_remote/Robot1TaskResult:robot1_remote/Robot1TaskFeedback"
)

get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg" NAME_WE)
add_custom_target(_robot1_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot1_remote" "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:robot1_remote/Robot1TaskGoal"
)

get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg" NAME_WE)
add_custom_target(_robot1_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot1_remote" "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg" "std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:robot1_remote/Robot1TaskResult"
)

get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg" NAME_WE)
add_custom_target(_robot1_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot1_remote" "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg" "std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:robot1_remote/Robot1TaskFeedback"
)

get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg" NAME_WE)
add_custom_target(_robot1_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot1_remote" "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg" ""
)

get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg" NAME_WE)
add_custom_target(_robot1_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot1_remote" "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg" ""
)

get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg" NAME_WE)
add_custom_target(_robot1_remote_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot1_remote" "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot1_remote
)
_generate_msg_cpp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot1_remote
)
_generate_msg_cpp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot1_remote
)
_generate_msg_cpp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot1_remote
)
_generate_msg_cpp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot1_remote
)
_generate_msg_cpp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot1_remote
)
_generate_msg_cpp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot1_remote
)

### Generating Services

### Generating Module File
_generate_module_cpp(robot1_remote
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot1_remote
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot1_remote_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot1_remote_generate_messages robot1_remote_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskAction.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_cpp _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_cpp _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_cpp _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_cpp _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_cpp _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_cpp _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_cpp _robot1_remote_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot1_remote_gencpp)
add_dependencies(robot1_remote_gencpp robot1_remote_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot1_remote_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot1_remote
)
_generate_msg_eus(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot1_remote
)
_generate_msg_eus(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot1_remote
)
_generate_msg_eus(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot1_remote
)
_generate_msg_eus(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot1_remote
)
_generate_msg_eus(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot1_remote
)
_generate_msg_eus(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot1_remote
)

### Generating Services

### Generating Module File
_generate_module_eus(robot1_remote
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot1_remote
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot1_remote_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot1_remote_generate_messages robot1_remote_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskAction.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_eus _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_eus _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_eus _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_eus _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_eus _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_eus _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_eus _robot1_remote_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot1_remote_geneus)
add_dependencies(robot1_remote_geneus robot1_remote_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot1_remote_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot1_remote
)
_generate_msg_lisp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot1_remote
)
_generate_msg_lisp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot1_remote
)
_generate_msg_lisp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot1_remote
)
_generate_msg_lisp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot1_remote
)
_generate_msg_lisp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot1_remote
)
_generate_msg_lisp(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot1_remote
)

### Generating Services

### Generating Module File
_generate_module_lisp(robot1_remote
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot1_remote
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot1_remote_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot1_remote_generate_messages robot1_remote_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskAction.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_lisp _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_lisp _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_lisp _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_lisp _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_lisp _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_lisp _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_lisp _robot1_remote_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot1_remote_genlisp)
add_dependencies(robot1_remote_genlisp robot1_remote_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot1_remote_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot1_remote
)
_generate_msg_nodejs(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot1_remote
)
_generate_msg_nodejs(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot1_remote
)
_generate_msg_nodejs(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot1_remote
)
_generate_msg_nodejs(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot1_remote
)
_generate_msg_nodejs(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot1_remote
)
_generate_msg_nodejs(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot1_remote
)

### Generating Services

### Generating Module File
_generate_module_nodejs(robot1_remote
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot1_remote
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot1_remote_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot1_remote_generate_messages robot1_remote_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskAction.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_nodejs _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_nodejs _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_nodejs _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_nodejs _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_nodejs _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_nodejs _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_nodejs _robot1_remote_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot1_remote_gennodejs)
add_dependencies(robot1_remote_gennodejs robot1_remote_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot1_remote_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot1_remote
)
_generate_msg_py(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot1_remote
)
_generate_msg_py(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot1_remote
)
_generate_msg_py(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot1_remote
)
_generate_msg_py(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot1_remote
)
_generate_msg_py(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot1_remote
)
_generate_msg_py(robot1_remote
  "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot1_remote
)

### Generating Services

### Generating Module File
_generate_module_py(robot1_remote
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot1_remote
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot1_remote_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot1_remote_generate_messages robot1_remote_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskAction.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_py _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionGoal.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_py _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionResult.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_py _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskActionFeedback.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_py _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskGoal.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_py _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskResult.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_py _robot1_remote_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahmedmady/robot1_ws/devel/share/robot1_remote/msg/Robot1TaskFeedback.msg" NAME_WE)
add_dependencies(robot1_remote_generate_messages_py _robot1_remote_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot1_remote_genpy)
add_dependencies(robot1_remote_genpy robot1_remote_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot1_remote_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot1_remote)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot1_remote
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot1_remote_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robot1_remote_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot1_remote)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot1_remote
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot1_remote_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robot1_remote_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot1_remote)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot1_remote
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot1_remote_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robot1_remote_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot1_remote)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot1_remote
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot1_remote_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robot1_remote_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot1_remote)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot1_remote\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot1_remote
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot1_remote_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robot1_remote_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
