
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin }:
buildRosPackage {
  pname = "ros-kinetic-ecl-build";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_tools-release/archive/release/kinetic/ecl_build/0.61.6-0.tar.gz;
    sha256 = "54d4da8a3f3d361e2ad8cdcf0afe44fc7af21e82886cdf73d63fabd500ec4825";
  };

  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ecl-license catkin ];

  meta = {
    description = ''Collection of cmake/make build tools primarily for ecl development itself, but also
     contains a few cmake modules useful outside of the ecl.'';
    #license = lib.licenses.BSD;
  };
}