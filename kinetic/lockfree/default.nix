
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosatomic, rosconsole, catkin, allocators, roslib }:
buildRosPackage {
  pname = "ros-kinetic-lockfree";
  version = "1.0.25";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_realtime-release/archive/release/kinetic/lockfree/1.0.25-0.tar.gz;
    sha256 = "2f9a66a610bd7f42abbd24746d67924a8b7e2c705ca1c169964286d3de25d14f";
  };

  propagatedBuildInputs = [ rosconsole rosatomic roslib allocators ];
  nativeBuildInputs = [ rosatomic rosconsole catkin roslib allocators ];

  meta = {
    description = ''The lockfree package contains lock-free data structures for use in multithreaded programming.  These
     kinds of data structures are generally not as easy to use as single-threaded equivalents, and are not
     always faster.  If you don't know you need to use one, try another structure with a lock around it
     first.'';
    #license = lib.licenses.BSD;
  };
}