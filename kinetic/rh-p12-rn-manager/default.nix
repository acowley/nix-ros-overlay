
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-sdk, cmake-modules, catkin, robotis-controller, roscpp, rh-p12-rn-base-module, robotis-device, robotis-controller-msgs, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-rh-p12-rn-manager";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/RH-P12-RN-release/archive/release/kinetic/rh_p12_rn_manager/0.1.0-0.tar.gz;
    sha256 = "2dca3d4c71024aadaa0a5ddcb1edcb45fb300a3fd91b530a9f2c40a15397f0ea";
  };

  propagatedBuildInputs = [ dynamixel-sdk roscpp rh-p12-rn-base-module cmake-modules robotis-device robotis-controller-msgs robotis-controller robotis-framework-common ];
  nativeBuildInputs = [ dynamixel-sdk cmake-modules catkin robotis-controller robotis-controller-msgs rh-p12-rn-base-module robotis-device roscpp robotis-framework-common ];

  meta = {
    description = ''Manager package using ROBOTIS framework to control the RH-P12-RN'';
    #license = lib.licenses.Apache 2.0;
  };
}