
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, poco, boost, cmake-modules, catkin, console-bridge }:
buildRosPackage {
  pname = "ros-melodic-class-loader";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/class_loader-release/archive/release/melodic/class_loader/0.4.1-0.tar.gz;
    sha256 = "09c3d35e5afb806c612e843ef15078b97a0a6051174a45712d38c38345eae4a5";
  };

  propagatedBuildInputs = [ poco console-bridge boost ];
  nativeBuildInputs = [ poco console-bridge cmake-modules boost catkin ];

  meta = {
    description = ''The class_loader package is a ROS-independent package for loading plugins during runtime and the foundation of the higher level ROS &quot;pluginlib&quot; library. class_loader utilizes the host operating system's runtime loader to open runtime libraries (e.g. .so/.dll files), introspect the library for exported plugin classes, and allows users to instantiate objects of said exported classes without the explicit declaration (i.e. header file) for those classes.'';
    #license = lib.licenses.BSD;
  };
}