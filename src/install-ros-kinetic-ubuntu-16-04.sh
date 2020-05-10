#http://wiki.ros.org/kinetic/Installation/Ubuntu

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update

sudo apt-get install ros-kinetic-desktop-full

sudo rosdep init

rosdep update

sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential

source /opt/ros/kinetic/setup.bash
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
#configuring ROS environment 
#http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
source devel/setup.bash
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
echo $ROS_PACKAGE_PATH

#Next Steps : http://wiki.ros.org/ROS/Tutorials/NavigatingTheFilesystem



