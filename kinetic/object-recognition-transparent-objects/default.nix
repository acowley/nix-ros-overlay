
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, object-recognition-core, proj, pcl-ros, ecto-opencv, ecto }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-transparent-objects";
  version = "0.4.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/object_recognition_transparent_objects-release/archive/release/kinetic/object_recognition_transparent_objects/0.4.3-0.tar.gz;
    sha256 = "547e753c67f40c949267ee6561e089c8107c009641abb060f9b2798b98b408a5";
  };

  propagatedBuildInputs = [ proj object-recognition-core ecto-opencv pcl-ros ecto ];
  nativeBuildInputs = [ proj pcl-ros catkin object-recognition-core ecto ];

  meta = {
    description = ''A technique to recognize and estimate poses of transparent objects'';
    #license = lib.licenses.BSD;
  };
}