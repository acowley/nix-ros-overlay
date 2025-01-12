
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, eigen3-cmake-module, geometry-msgs, moveit-common, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-resources-prbt-moveit-config, moveit-resources-prbt-pg70-support, moveit-resources-prbt-support, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, orocos-kdl, pilz-industrial-motion-planner-testutils, pluginlib, rclcpp, tf2, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-pilz-industrial-motion-planner";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/pilz_industrial_motion_planner/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "79f0d8cbe2bdd54e59738b5e5fb3b563960808f99b56db8a289ef8e9f791d436";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common boost moveit-resources-panda-moveit-config moveit-resources-prbt-moveit-config moveit-resources-prbt-pg70-support moveit-resources-prbt-support pilz-industrial-motion-planner-testutils ];
  propagatedBuildInputs = [ eigen3-cmake-module geometry-msgs moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface orocos-kdl pluginlib rclcpp tf2 tf2-eigen tf2-eigen-kdl tf2-geometry-msgs tf2-kdl tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''MoveIt plugin to generate industrial trajectories PTP, LIN, CIRC and sequences thereof.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
