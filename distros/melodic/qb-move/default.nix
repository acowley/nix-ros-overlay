
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-move-control, qb-move-description, qb-move-gazebo, qb-move-hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-qb-move";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/melodic/qb_move/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "1f56d36fb9131f6a552f6e755183bd5c6b8b2302da8937cf7156ef49a18d9471";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-move-control qb-move-description qb-move-gazebo qb-move-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
