# bu_dingo_d1
This repo is for the Dingo-O robots at Boston University designated as d1. For the time of writing this, d1 is equipped with two ZED2 depth cameras, a Velodyne VLP16, and a Kinova Gen3 Lite robot arm. This dingo is configured such to be a mobile manipulator. This repository will serve as both documentation for the mobile manipulator and its related research as well as a getting-started guide for operating the Dingo-O's.

## Installation
It is important to note that the Dingo's run off of a NVIDIA Jetson with a discrete NVIDIA GPU with Ubuntu 18.04, while the development computer that this section is for was a Dell XPS13 with Ubuntu 20.04. As such, there will be some minor discrepancies between building the ROS packages on the Dingo and the development computer. However, rest assured, ROS melodic and noetic tend to play nice with each other and any problems will be noted here.

### Development Computer
Dependencies that will need to be installed, instructions taken from Clearpath Robotics handy docs (https://www.clearpathrobotics.com/assets/guides/noetic/dingo/Installing.html): \
`wget https://packages.clearpathrobotics.com/public.key -O - | sudo apt-key add -` \
`sudo sh -c 'echo "deb https://packages.clearpathrobotics.com/stable/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/clearpath-latest.list'` \
`sudo apt update` \
`sudo apt install ros-noetic-dingo-desktop ros-noetic-dingo-simulator ros-noetic-dingo-viz` \

Clone this repo (along with all the other repo packages that this one depends on): \
`git clone --recursive git@github.com:RX-00/bu_dingo_d1.git` \
You then want to move all the contents of the /bu_dingo_d1 directory to your catkin_ws, such that the src directory from this repo will be the src repo for your local catkin_ws. Alternatively, you can move only the contents within `bu_dingo_d1/src/*` to an already existing catkin_ws source directory: \
`mv bu_dingo_d1/* ~/catkin_ws/` \

Depending on the C++ compiler on the development computer and the update statuses of the ROS packages, this step may not be needed. Otherwise, under the ros_kortex package, it will be necessary to modify the CMakeLists.txt file to contain this line: \
`add_compile_options(-std=c++17)` \

Before being able to build all the ROS packages you first need to have CUDA installed. Ideally, this can be done through Ubuntu's apt. These lines are from NVIDIA's developers site CUDA download:
`wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.0-1_all.deb` \
`sudo dpkg -i cuda-keyring_1.0-1_all.deb` \
`sudo apt-get update` \
`sudo apt-get -y install cuda` \
It is important to install CUDA from NVIDIA's latest .deb since the ZED SDK installation offers an outdated version.

Next, you need to install the ZED SDK, which is best done by following Stereolab's instructions at this link: https://www.stereolabs.com/docs/installation/linux/ . Within the terminal while the ZED SDK is being installed you will want to choose yes whenever the installer asks.

Now you should be able to compile the packages!


### Dingo Computer
TODO: once the ROS packages unique to this repo are stable we will test deployment on the d2, d3, and d4 Dingo-O's to ensure compatibility.

## Usage
Once everything is installed and built without error, you can now choose which Dingo model you wish to use. This is done with this command: \
`source ~/catkin_ws/src/bosu08_custom/bosu08_d1/bosu08_d1_bringup/scripts/setup.bash` \
This will source the configuration to use the Dingo d1's urdf for simulation and visualization. If you wish to use another Dingo configuration model you will have to choose a different number (*) as seen here: \
`source ~/catkin_ws/src/bosu08_custom/bosu08_d*/bosu08_d*_bringup/scripts/setup.bash` \

To quickly check that your robot model is working you can use this launch file: \
`roslaunch dingo_viz view_model.launch` \

Once the model you want to use is sourced you should now be able to see it in simulation: \
`roslaunch dingo_gazebo dingo_world.launch` \
