
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, angles, console-bridge, diagnostic-msgs, diagnostic-updater, eigen, eigen-stl-containers, eigen3-cmake-module, geographic-msgs, geographiclib, geometry-msgs, gtest, libmavconn, mavlink, mavros-msgs, message-filters, nav-msgs, pluginlib, python3Packages, rclcpp, rclcpp-components, rclpy, rcpputils, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-eigen, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-galactic-mavros";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/galactic/mavros/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "e7578b939f485c5b478ae796e638514cd5f59d4910b0bcaad538340b7b6f8401";
  };

  buildType = "ament_cmake";
  buildInputs = [ angles ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common gtest ];
  propagatedBuildInputs = [ console-bridge diagnostic-msgs diagnostic-updater eigen eigen-stl-containers eigen3-cmake-module geographic-msgs geographiclib geometry-msgs libmavconn mavlink mavros-msgs message-filters nav-msgs pluginlib python3Packages.click rclcpp rclcpp-components rclpy rcpputils rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2-eigen tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python eigen3-cmake-module ];

  meta = {
    description = ''MAVROS -- MAVLink extendable communication node for ROS
    with proxy for Ground Control Station.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
