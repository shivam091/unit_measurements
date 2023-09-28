# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::AngularVelocity = UnitMeasurements.build do
  unit :"rad/s", aliases: [:"rad·s⁻¹", :"radian per second", :"radians per second"]
  unit :"rad/min", value: "1/60 rad/s", aliases: [:"rad·min⁻¹", :"radian per minute", :"radians per minute"]
  unit :"rad/h", value: "1/60 rad/min", aliases: [:"rad·h⁻¹", :"radian per hour", :"radians per hour"]

  unit :"deg/s", value: [(Math::PI / 180), :"rad/s"], aliases: [:"°/s", :"deg·s⁻¹", :"degree per second", :"degrees per second"]
  unit :"deg/min", value: "1/60 deg/s", aliases: [:"°/min", :"deg·min⁻¹", :"degree per minute", :"degrees per minute"]
  unit :"deg/h", value: "1/60 deg/min", aliases: [:"°/h", :"deg·h⁻¹", :"degree per hour", :"degrees per hour"]

  unit :"rev/s", value: "360 deg/s", aliases: [:"rev·s⁻¹", :"revolution per second", :"revolutions per second"]
  unit :"rev/min", value: "1/60 rev/s", aliases: [:"rev·min⁻¹", :"revolution per minute", :"revolutions per minute"]
  unit :"rev/h", value: "1/60 rev/min", aliases: [:"rev·h⁻¹", :"revolution per hour", :"revolutions per hour"]

  unit :"gon/s", value: [(Math::PI / 200), :"rad/s"], aliases: [:"ᵍ/s", :"gon·s⁻¹", :"gradian per second", :"gradians per second"]
  unit :"gon/min", value: "1/60 gon/s", aliases: [:"ᵍ/min", :"gon·min⁻¹", :"gradian per minute", :"gradians per minute"]
  unit :"gon/h", value: "1/60 gon/min", aliases: [:"ᵍ/h", :"gon·h⁻¹", :"gradian per hour", :"gradians per hour"]
end
