# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Frequency = UnitMeasurements.build do
  primitive "Hz"

  system :metric do
    si_unit "Hz", aliases: ["hertz", "hertzes"]

    unit "deg/s", value: [Rational(1, 360), "Hz"], aliases: ["°/s", "degree per second", "degrees per second"]
    unit "rad/s", value: [Rational(1, (2 * Math::PI)), "Hz"], aliases: ["radian per second", "radians per second"]
  end

  unit "rev/s", value: [1, "Hz"], aliases: ["rps", "revolution per second", "revolutions per second"]
end
