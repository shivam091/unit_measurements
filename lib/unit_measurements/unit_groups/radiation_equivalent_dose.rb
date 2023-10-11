# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::RadiationEquivalentDose = UnitMeasurements.build do
  primitive "Sv"

  system :metric do
    si_unit "Sv", aliases: ["sievert", "sieverts"]
  end

  system :centimetre_gram_second do
    unit "rem", value: "0.01 Sv", aliases: ["röntgen equivalent man", "roentgen equivalent man"]
  end
end
