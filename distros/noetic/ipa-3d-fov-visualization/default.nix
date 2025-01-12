
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-ipa-3d-fov-visualization";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/ipa_3d_fov_visualization/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "3a0784f2c54df8fe9965d0e2ea9f248b3a8b19ff9a54fe82ada73e452b45891c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge image-geometry roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ipa_3d_fov_visualization package allows to visualize the field-of-view of a camera.'';
    license = with lib.licenses; [ asl20 ];
  };
}
