
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-bond";
  version = "1.8.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/bond_core-release/archive/release/melodic/bond/1.8.3-0.tar.gz;
    sha256 = "6a9f5fb5b44ce6285800177903b4364061521de47bda8cd8902814405aac83f4";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''A bond allows two processes, A and B, to know when the other has
    terminated, either cleanly or by crashing.  The bond remains
    connected until it is either broken explicitly or until a
    heartbeat times out.'';
    #license = lib.licenses.BSD;
  };
}