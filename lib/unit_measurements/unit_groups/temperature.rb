# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Temperature = UnitMeasurements.build do
  primitive "K"

  system :metric do
    si_unit "K", aliases: ["kelvin", "kelvins"]
  end

  system :english_engineering do
    unit "°R", value: "5/9 K", aliases: ["R", "°Ra", "Ra", "rankine"]
  end

  system :planck_units do
    unit "Tₚ", value: "1.416784e+32 K", aliases: ["planck temperature", "quantum temperature"]
  end
end
