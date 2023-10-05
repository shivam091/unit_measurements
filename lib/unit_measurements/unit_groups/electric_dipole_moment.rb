# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::ElectricDipoleMoment = UnitMeasurements.build do
  primitive "C⋅m"

  system :metric do
    si_unit "C⋅m", aliases: ["C*m", "coulomb-meter", "coulomb-metre"]
  end

  system :centimetre_gram_second do
    unit "D", value: "3.33564095e-30 C⋅m", aliases: ["debye", "debyes"]
  end
end
