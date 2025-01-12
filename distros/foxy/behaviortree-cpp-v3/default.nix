
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, cppzmq, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-behaviortree-cpp-v3";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/foxy/behaviortree_cpp_v3/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "815de4f03f7de7dccc05d26030c59ba7ac72c52bcdeb5d62d0845c2f70e6a2ad";
  };

  buildType = "catkin";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ boost cppzmq ncurses rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
