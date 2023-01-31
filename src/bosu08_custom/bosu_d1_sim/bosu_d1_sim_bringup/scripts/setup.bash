# Environment Varibles for BOSU08 Dingo
# URDF Extras
export DINGO_URDF_EXTRAS=$(catkin_find bosu08_d1_description urdf/bosu08_d1.urdf.xacro --first-only)

# Dingo
export DINGO_OMNI=1
export DINGO_JOY_DEV="/dev/input/ps4"
export DINGO_WIRELESS_INTERFACE="wlan0"

# PACS
export DINGO_PACS_ENABLED="True"
export DINGO_PACS_RISER="True"

# Velodyne
## enable
export DINGO_LASER_3D="True"
## launch
export DINGO_LASER_3D_TOWER="False"
export DINGO_LASER_3D_PARENT="C11_mount"
export DINGO_LASER_3D_HOST="192.168.131.20"
## mount description
export DINGO_C11_BRACKET_ENABLED="True"
export DINGO_C11_BRACKET_TYPE="horizontal"
export DINGO_C11_BRACKET_EXTENSION="18"

# PTU Zed
## enable
export DINGO_ZED_PTU_DRIVER="True"
export DINGO_ZED_PTU_URDF="True"
## mount description
export DINGO_PTU_BRACKET_ENABLED="True"
export DINGO_PTU_BRACKET_TYPE="horizontal"
export DINGO_PTU_BRACKET_EXTENSION="85"
## zed description
export DINGO_ZED_PTU_PREFIX="zed2_ptu"
export DINGO_ZED_PTU_NODE="zed2_ptu"
## zed launch
export DINGO_ZED_PTU_SERIAL="25990899"

# Static Zed 
## enable
export DINGO_ZED_STATIC_DRIVER="True"
export DINGO_ZED_STATIC_URDF="True"
## mount description
export DINGO_C01_BRACKET_ENABLED="True"
export DINGO_C01_BRACKET_TYPE="horizontal"
export DINGO_C01_BRACKET_EXTENSION="30"
## zed description
export DINGO_ZED_STATIC_PREFIX="zed2_static"
export DINGO_ZED_STATIC_NODE="zed2_static"
## zed launch
export DINGO_ZED_STATIC_SERIAL="21828581"

# Kinova Gen3 Lite
## enable
export DINGO_ARM_POWER="True"
export DINGO_ARM_DRIVER="True"
export DINGO_ARM_MOVEIT="True"
export DINGO_ARM_URDF="True"
## mount description
export DINGO_C14_BRACKET_ENABLED="True"
export DINGO_C14_BRACKET_TYPE="horizontal"
export DINGO_C14_BRACKET_EXTENSION="79"
## arm launch
export DINGO_ARM_MODEL="gen3_lite"
export DINGO_ARM_DOF="6"
export DINGO_ARM_VISION="false"
export DINGO_ARM_GRIPPER="gen3_lite_2f"
export DINGO_ARM_HOST="192.168.1.10"
export DINGO_ARM_SIM="false"
export DINGO_ARM_PREFIX="arm"
export DINGO_ARM_XYZ="0 0 0"
export DINGO_ARM_RPY="0 0 0"
export DINGO_ARM_MOUNT="C14_mount"
