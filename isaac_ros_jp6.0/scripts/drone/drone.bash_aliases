alias foxglove-bridge="ros2 launch foxglove_bridge foxglove_bridge_launch.xml port:=8765"
alias start-px4-agent="export FASTRTPS_DEFAULT_PROFILES_FILE=/usr/local/share/middleware_profiles/rtps_udp_profile.xml && \
    export RMW_FASTRTPS_USE_QOS_FROM_XML=1 && \
    MicroXRCEAgent udp4 -p 8888"
alias udp4-dds-config="export FASTRTPS_DEFAULT_PROFILES_FILE=/usr/local/share/middleware_profiles/rtps_udp_profile.xml"
alias clean-ws="rm -r build install log"
alias start-mpserver="ros2 launch behavior_tree mission_planner.launch.py config:=example.yaml action_name:=my_engine groot2_port:=1667 ns:=aaa"
alias run-test-pub="ros2 action send_goal /aaa/my_engine bb_behavior_msgs/action/Mission \"{
    plugins: [bb, drone], 
    target_tree: drone_behaviors/behavior_trees/test_pub.xml, 
    tear_down_tree: "", 
    payload: "", 
    poses: []
    }\""
alias source-cam-ws="source /workspaces/isaac_ros-dev/install/setup.bash"
alias source-drone-ws="source /workspaces/drone/install/setup.bash"
alias source-zed-ws="source /workspaces/zed/install/local_setup.bash"
alias rosdep-all="/usr/local/bin/scripts/rosdep-all.sh"
alias start-zed="ros2 launch zed_wrapper zed_camera.launch.py camera_model:=zedm"
alias muxinator="tmuxinator start -p /workspaces/config/tmuxinator/drone.yaml"
alias start-cam="tmuxinator start -p /workspaces/config/tmuxinator/camera.yaml"
alias run-tree="./workspaces/drone/tree_selection.sh"
