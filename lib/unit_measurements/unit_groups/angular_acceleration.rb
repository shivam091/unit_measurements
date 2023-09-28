# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::AngularAcceleration = UnitMeasurements.build do
  system :metric do
    primitive :"rad/s²"

    si_unit :"rad/s²", aliases: [:"rad/s^2", :"rad·s⁻²", :"radian per second squared", :"radians per second squared"]
    unit :"gon/s²", value: [(Math::PI / 200), :"rad/s²"], aliases: [:"gon/s^2", :"ᵍ/s²", :"gon·s⁻²", :"gradian per second squared", :"gradians per second squared"]
  end

  unit :"deg/s²", value: [(Math::PI / 180), :"rad/s²"], aliases: [:"deg/s^2", :"°/s²", :"deg·s⁻²", :"degree per second squared", :"degrees per second squared"]
end
