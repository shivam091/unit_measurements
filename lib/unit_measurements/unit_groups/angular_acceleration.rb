# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::AngularAcceleration = UnitMeasurements.build do
  primitive "rad/s²"

  system :metric do
    si_unit "rad/s²", aliases: ["rad/s^2", "radian per second squared", "radians per second squared"]

    unit "deg/s²", value: [(Math::PI / 180), "rad/s²"], aliases: ["°/s²", "deg/s^2", "degree per second squared", "degrees per second squared"]
    unit "gon/s²", value: [(Math::PI / 200), "rad/s²"], aliases: ["ᵍ/s²", "gon/s^2", "gradian per second squared", "gradians per second squared"]
  end
end
