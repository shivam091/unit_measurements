# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::ElectricQuadrupoleMoment = UnitMeasurements.build do
  primitive "C·m²"

  system :metric do
    si_unit "C·m²", aliases: ["C*m^2", "coulomb square meter", "coulomb square metre"]

    unit "B", value: "1e-26 statC·cm²", aliases: ["buckingham", "buckinghams"]
    unit "statC·cm²", value: "3.335641e-14 C·m²", aliases: ["statC*m^2", "statcoulomb square meter", "statcoulomb square metre"]
  end
end
