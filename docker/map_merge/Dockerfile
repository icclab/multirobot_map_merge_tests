FROM ros:kinetic-ros-base

# Update the sources list
RUN apt-get update

# Install basic applications
RUN apt-get install -y git vim ros-kinetic-map-server

# Set the directory to cakin_ws
WORKDIR catkin_ws

# Clone repos
RUN mkdir src \
  && cd src \
  && git clone https://github.com/icclab/multirobot_map_merge_tests.git \
  && git clone https://github.com/rdesc/m-explore.git 

# Make repos
RUN /bin/bash -c "source /opt/ros/kinetic/setup.bash && rosdep install -y --from-paths . --ignore-src --rosdistro=kinetic && catkin_make_isolated --install"

# Copy entrypoint file into the container at /
ADD entrypoint.sh /

# Copy map folder into container at /map
ADD map /map 

# Set the default directory where CMD will execute
WORKDIR /

# Configure environment
CMD ["/bin/bash", "entrypoint.sh"]
