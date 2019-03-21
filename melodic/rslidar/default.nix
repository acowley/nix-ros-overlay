
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rslidar-driver, rslidar-msgs, rslidar-pointcloud, catkin }:
buildRosPackage {
  pname = "ros-melodic-rslidar";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/CPFL/robosense-release/archive/release/melodic/rslidar/1.0.2-0.tar.gz;
    sha256 = "afc1683d73695c2460bccb0db0b1ecf4907ddff91506e6c4c33ac34ecf91a5f6";
  };

  propagatedBuildInputs = [ rslidar-driver rslidar-msgs rslidar-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic ROS support for the Robosense 3D LIDARs.'';
    #license = lib.licenses.BSD;
  };
}