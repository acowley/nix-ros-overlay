
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, git, catkin, assimp, octomap, eigen }:
buildRosPackage {
  pname = "ros-melodic-hpp-fcl";
  version = "1.0.1-r2";

  src = fetchurl {
    url = https://github.com/ipab-slmc/hpp-fcl_catkin-release/archive/release/melodic/hpp-fcl/1.0.1-2.tar.gz;
    sha256 = "f6c9669e0b2cf9cbc04bfc89014ae8a82b0895e65eec29d65ca557ca6d375a41";
  };

  propagatedBuildInputs = [ octomap boost assimp eigen ];
  nativeBuildInputs = [ octomap boost eigen git catkin assimp ];

  meta = {
    description = ''HPP fork of FCL with bug fixes.'';
    #license = lib.licenses.BSD;
  };
}