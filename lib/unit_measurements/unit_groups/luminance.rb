# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Luminance = UnitMeasurements.build do
  primitive "cd/m²"

  system :metric do
    unit "cd/m²", aliases: ["cd/m^2", "candela per square metre", "candelas per square metre", "candela per square meter", "candelas per square meter"]

    unit "L", value: [Rational(10000, Math::PI), "cd/m²"], aliases: ["lambert", "lamberts"]
    unit "sb", value: "10000 cd/m²", aliases: ["stlib"]
  end

  system :us_customary do
    unit "fL", value: [Rational(1, Math::PI), "cd/ft²"], aliases: ["ft-L", "foot lambert", "foot-lambert"]

    unit "cd/in²", value: "1550.0031 cd/m²", aliases: ["cd/in^2", "candela per square inch", "candelas per square inch"]
    unit "cd/ft²", value: "10.763910417 cd/m²", aliases: ["cd/ft^2", "candela per square foot", "candelas per square foot"]
  end
end
