
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rtt-geometry-msgs, rtt-roscomm, rtt-std-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtt-sensor-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_sensor_msgs/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "7a92d416e3dea491d53bbb2a94695f301df7bf37d419e93ac87cc8567bd5f7b9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rtt-geometry-msgs rtt-roscomm rtt-std-msgs sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS sensor_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/sensor_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}