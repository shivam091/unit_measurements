# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Illuminance = UnitMeasurements.build do
  primitive "lx"

  system :metric do
    si_unit "lx", aliases: ["lux", "lm/m²", "lm/m^2", "lm·m⁻²", "lumen per square metre", "lumen per square meter"]
  end

  system :centimetre_gram_second do
    unit "ph", value: "10000 lx", aliases: ["phot", "phots", "lm/cm²", "lm/cm^2", "lm·cm⁻²", "lumen per square centimetre", "lumen per square centimeter"]
  end

  system :us_customary do
    unit "fc", value: "10.763910417 lx", aliases: ["footcandle", "lm/ft²", "lm/ft^2", "lm·ft⁻²", "lumen per square foot"]
  end

  unit "nx", value: "1 mlx", aliases: ["nox"]
end
