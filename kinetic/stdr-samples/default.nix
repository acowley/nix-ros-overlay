
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, roslib, nav-msgs, stdr-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-stdr-samples";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_samples/0.3.2-0.tar.gz;
    sha256 = "ad1d00afd61790ecd3711da0614f6b85957cc0b117786253eef21e860d833079";
  };

  propagatedBuildInputs = [ nav-msgs geometry-msgs stdr-msgs sensor-msgs roslib roscpp tf ];
  nativeBuildInputs = [ nav-msgs catkin geometry-msgs stdr-msgs sensor-msgs roslib roscpp tf ];

  meta = {
    description = ''Provides sample codes to demonstrate STDR simulator functionalities.'';
    #license = lib.licenses.GPLv3;
  };
}