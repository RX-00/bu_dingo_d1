#!/bin/bash

#Start Flir PTU Driver

screen -dmS "ptu"
echo "Launching Flir PTU E46"
echo "#TO SEE DRIVER OUTPUT TYPE: screen -r ptu"
echo "CTRL-A then CTRL-D to Detach and go back to main console *See Screen Usage for more Details"
screen -S "ptu" -X stuff "roslaunch flir_ptu_driver ptu.launch
"

#Start Kinova Gen 3 Lite

#Start MoveIT!



#^ Deliberate LineFeed + " to execute command
