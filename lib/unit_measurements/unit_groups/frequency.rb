# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Frequency = UnitMeasurements.build do
  primitive "Hz"

  system :metric do
    si_unit "Hz", aliases: ["hertz", "hertzes"]

    unit "deg/s", value: "1/360 Hz", aliases: ["°/s", "deg·s⁻¹", "degree per second", "degrees per second"]
    unit "rad/s", value: "1/6.283185307179586 Hz", aliases: ["rad·s⁻¹", "radian per second", "radians per second"] # 1/2π
  end

  unit "rev/s", value: "1 Hz", aliases: ["rps", "rev·s⁻¹", "revolution per second", "revolutions per second"]
end
