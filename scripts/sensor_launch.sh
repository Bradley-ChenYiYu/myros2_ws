#!/bin/bash
cd ~/myros2_ws/
sudo ip link set down can0
sudo ip link set can0 up type can bitrate 500000

#if [[ -z $(candump can0 2>&1) ]]; then
#        echo candump no output
#        return 1
#elif [[ $(candump can0 2>&1) = *'No'* ]]; then
#       return 2
#fi
source install/setup.bash
echo running
ros2 launch tracer_base sensor.xml
