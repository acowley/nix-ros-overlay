
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, map-server, amcl, catkin, cob-default-env-config, move-base, cob-scan-unifier, dwa-local-planner, rviz, cob-linear-nav, topic-tools, cob-supported-robots, cob-navigation-config }:
buildRosPackage {
  pname = "ros-melodic-cob-navigation-global";
  version = "0.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_navigation_global/0.6.8-1.tar.gz";
    name = "0.6.8-1.tar.gz";
    sha256 = "687344547e320f8aeaac6a09d6ef92b32d7b286ffd56483230f604c327e54129";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots roslaunch cob-default-env-config ];
  propagatedBuildInputs = [ map-server amcl move-base cob-default-env-config cob-scan-unifier dwa-local-planner rviz cob-linear-nav topic-tools cob-navigation-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds config and launch files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.
    The move_base node is configured to run over a pre-specified static map.'';
    license = with lib.licenses; [ asl20 ];
  };
}