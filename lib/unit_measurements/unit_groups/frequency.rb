# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Frequency = UnitMeasurements.build do
  primitive "Hz"

  system :metric do
    si_unit "Hz", aliases: ["hertz", "hertzes"]

    unit "rad/s", value: [Rational(1, (2 * Math::PI)), "Hz"], aliases: ["rad·s⁻¹", "radian per second", "radians per second"]
  end

  unit "deg/s", value: [Rational(1, 360), "Hz"], aliases: ["°/s", "deg·s⁻¹", "degree per second", "degrees per second"]
  unit "rev/s", value: [1, "Hz"], aliases: ["rps", "rev·s⁻¹", "revolution per second", "revolutions per second"]
end
