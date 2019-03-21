
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fiducial-slam, catkin, move-base, move-basic, aruco-detect }:
buildRosPackage {
  pname = "ros-kinetic-magni-nav";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/magni_robot-release/archive/release/kinetic/magni_nav/0.4.2-0.tar.gz;
    sha256 = "442bdb21244f54c33edec6a292df48a6cdd28a8c9443282c7bd3b26342609a56";
  };

  propagatedBuildInputs = [ aruco-detect fiducial-slam move-base move-basic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The magni_nav package'';
    #license = lib.licenses.BSD;
  };
}