
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, tf, sensor-msgs, catkin, gazeboSimulator, nav-msgs, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-gazebo";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/melodic/turtlebot3_gazebo/1.2.0-0.tar.gz;
    sha256 = "9c82b64f9c29a023ddaf9388d987b60a7584a62400a9ca9d4421347ca4750651";
  };

  propagatedBuildInputs = [ gazebo-ros nav-msgs geometry-msgs std-msgs gazeboSimulator.gazebo sensor-msgs tf roscpp ];
  nativeBuildInputs = [ gazebo-ros nav-msgs catkin geometry-msgs std-msgs sensor-msgs tf roscpp ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    #license = lib.licenses.Apache 2.0;
  };
}