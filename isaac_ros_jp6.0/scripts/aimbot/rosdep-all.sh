#!/bin/bash

if [ -d /workspaces/isaac_ros-dev ]; then 
    cd /workspaces/isaac_ros-dev ; 
    echo "rosdep updating for isaac_ros-dev....." ; 
    rosdep install --from-paths src -y --ignore-src ; 
fi

$@
