
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-planners, moveit-plugins, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-perception, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-melodic-moveit-runtime";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_runtime/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "88450045ed7478aaae509d1237189b90ef6799361d762ff78391c345b94d71d6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros-manipulation moveit-ros-move-group moveit-ros-perception moveit-ros-planning moveit-ros-planning-interface moveit-ros-warehouse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''moveit_runtime meta package contains MoveIt! packages that are essential for its runtime (e.g. running MoveIt! on robots).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
