
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rviz, qt5, media-export, jsoncpp }:
buildRosPackage {
  pname = "ros-melodic-fkie-potree-rviz-plugin";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/fkie-release/potree_rviz_plugin-release/archive/release/melodic/fkie_potree_rviz_plugin/1.0.0-0.tar.gz;
    sha256 = "9a9b281a5546efc32cbf9d79e4675deaf0c30bae167cd88a26c6c904a23cbd8c";
  };

  propagatedBuildInputs = [ rviz boost media-export qt5.qtbase ];
  nativeBuildInputs = [ rviz boost jsoncpp catkin qt5.qtbase ];

  meta = {
    description = ''Render large point clouds in rviz'';
    #license = lib.licenses.Apache-2.0;
  };
}