
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-microstrain-inertial-msgs";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-ros2-release/archive/release/foxy/microstrain_inertial_msgs/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "42d99735d6a112e470fef7b335a1812fa270635505ec5863a1af49ee7f93d43a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry-msgs std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''A package that contains ROS message corresponding to microstrain message types.'';
    license = with lib.licenses; [ mit ];
  };
}
