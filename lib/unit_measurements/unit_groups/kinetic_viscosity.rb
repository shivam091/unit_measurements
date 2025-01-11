# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::KineticViscosity = UnitMeasurements.build do
  primitive "m²/s"

  system :metric do
    unit "m²/s", aliases: ["m^2/s", "square metre per second", "square meter per second", "square metres per second", "square meters per second"]

    unit "St", value: "1e-4 m²/s", aliases: ["stoke", "strokes"]
  end

  system :foot_pound_second do
    unit "ft²/s", value: "0.09290304 m²/s", aliases: ["ft^2/s", "square foot per second", "square feet per second"]
    unit "in²/s", value: "0.006944444444444443 ft²/s", aliases: ["in^2/s", "square inch per second", "square inches per second"]
  end
end
