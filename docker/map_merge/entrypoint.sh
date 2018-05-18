#!/bin/bash
set -e

source /catkin_ws/devel_isolated/setup.bash

echo "Starting map_merger with ROS_MASTER_URI=$ROS_MASTER_URI"

roslaunch multirobot_map_merge from_map_server.launch map:=/map/demo_map.yaml
