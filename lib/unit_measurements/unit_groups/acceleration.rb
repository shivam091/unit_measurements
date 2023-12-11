# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Acceleration = UnitMeasurements.build do
  primitive "m/s²"

  system :metric do
    unit "m/s²", aliases: ["m/s^2", "meter per second squared", "meters per second squared", "metre per second squared", "metres per second squared"]
  end

  system :imperial do
    unit "in/s²", value: "0.0254 m/s²", aliases: ["in/s^2", "ips²", "inch per second squared", "inches per second squared"]
    unit "ipm/s", value: "0.0004233333 m/s²", aliases: ["in/(min⋅s)", "inch per minute per second", "inches per minute per second"]
    unit "iph/s", value: "7.055555e-6 m/s²", aliases: ["in/(h⋅s)", "inch per hour per second", "inches per hour per second"]

    unit "mi/s²", value: "1609.344 m/s²", aliases: ["mi/s^2", "mps²", "mile per second squared", "miles per second squared"]
    unit "mpm/s", value: "26.8224 m/s²", aliases: ["mi/(min⋅s)", "mile per minute per second", "miles per minute per second"]
    unit "mph/s", value: "0.44704 m/s²", aliases: ["mi/(h⋅s)", "mile per hour per second", "miles per hour per second"]
  end

  system :foot_pound_second do
    unit "ft/s²", value: "0.3048 m/s²", aliases: ["ft/s^2", "fps²", "foot per second squared", "feet per second squared"]
    unit "fpm/s", value: "0.00508 m/s²", aliases: ["ft/(min⋅s)", "foot per minute per second", "feet per minute per second"]
    unit "fph/s", value: "8.466667e-5 m/s²", aliases: ["ft/(h⋅s)", "foot per hour per second", "feet per hour per second"]
  end

  system :meteorology_aviation_maritime do
    unit "Kn/s", value: "0.5144444 m/s²", aliases: ["knot per second", "knots per second"]
  end

  system :centimetre_gram_second do
    unit "Gal", value: "1e-2 m/s²", aliases: ["gal", "galileo"]
  end

  system :planck_units do
    unit "aₚ", value: "5.5608e+51 m/s²", aliases: ["planck acceleration", "quantum acceleration"]
  end
end
