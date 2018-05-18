#!/bin/bash
set -e

source /catkin_ws/devel_isolated/setup.bash

#export TURTLEBOT_GAZEBO_WORLD_FILE="/catkin_ws/src/turtlebot_simulator/turtlebot_gazebo/worlds/playground.world"
echo "Starting map_merger with ROS_MASTER_URI=$ROS_MASTER_URI"

roslaunch multirobot_map_merge map_merge.launch

