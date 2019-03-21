
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-py-trees";
  version = "0.5.12";

  src = fetchurl {
    url = https://github.com/stonier/py_trees-release/archive/release/kinetic/py_trees/0.5.12-0.tar.gz;
    sha256 = "d6a11eaf83c6cb706584db56c1d28109f5898a974b1bb429eb87d4e3b197cb4e";
  };

  propagatedBuildInputs = [ pythonPackages.pydot pythonPackages.enum34 ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Pythonic implementation of behaviour trees.'';
    #license = lib.licenses.BSD;
  };
}