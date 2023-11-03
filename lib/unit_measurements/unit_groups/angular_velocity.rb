# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::AngularVelocity = UnitMeasurements.build do
  primitive "rad/s"

  system :metric do
    unit "rad/s", aliases: ["radian per second", "radians per second"]
    unit "rad/min", value: "1/60 rad/s", aliases: ["radian per minute", "radians per minute"]
    unit "rad/h", value: "1/60 rad/min", aliases: ["radian per hour", "radians per hour"]

    unit "deg/s", value: [(Math::PI / 180), "rad/s"], aliases: ["°/s", "degree per second", "degrees per second"]
    unit "deg/min", value: "1/60 deg/s", aliases: ["°/min", "degree per minute", "degrees per minute"]
    unit "deg/h", value: "1/60 deg/min", aliases: ["°/h", "degree per hour", "degrees per hour"]

    unit "gon/s", value: [(Math::PI / 200), "rad/s"], aliases: ["ᵍ/s", "gradian per second", "gradians per second"]
    unit "gon/min", value: "1/60 gon/s", aliases: ["ᵍ/min", "gradian per minute", "gradians per minute"]
    unit "gon/h", value: "1/60 gon/min", aliases: ["ᵍ/h", "gradian per hour", "gradians per hour"]
  end

  unit "rev/s", value: "360 deg/s", aliases: ["revolution per second", "revolutions per second"]
  unit "rev/min", value: "1/60 rev/s", aliases: ["revolution per minute", "revolutions per minute"]
  unit "rev/h", value: "1/60 rev/min", aliases: ["revolution per hour", "revolutions per hour"]
end
