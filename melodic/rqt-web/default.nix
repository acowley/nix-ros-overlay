
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, webkit-dependency, rqt-gui, catkin, pythonPackages, qt-gui, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-web";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_web-release/archive/release/melodic/rqt_web/0.4.8-0.tar.gz;
    sha256 = "3192e2e64f268d79b93d505bc475aa1f39009e75f645d294934d55c2b0b27303";
  };

  propagatedBuildInputs = [ rqt-gui-py qt-gui rospy pythonPackages.rospkg webkit-dependency rqt-gui python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_web is a simple web content viewer for rqt. Users can show web content in Qt-based window by specifying its URL.'';
    #license = lib.licenses.BSD;
  };
}