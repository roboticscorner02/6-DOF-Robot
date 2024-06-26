cmake_minimum_required(VERSION 3.0.2)
project(robot1_controller)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
  controller_manager
  hardware_interface
)

add_service_files(
  FILES
  AnglesConverter.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS
    controller_manager
    hardware_interface
)


include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(angles_converter_cpp src/angles_converter.cpp)
add_dependencies(angles_converter_cpp ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(angles_converter_cpp ${catkin_LIBRARIES})

add_executable(robot1_interface_node src/robot1_interface.cpp)
add_dependencies(robot1_interface_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(robot1_interface_node ${catkin_LIBRARIES})