# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::RadiationExposure = UnitMeasurements.build do
  primitive "C/kg"

  system :metric do
    si_unit "C/kg", aliases: ["coulomb per kilogram", "coulomb per kilogramme", "coulombs per kilogram", "coulombs per kilogramme"]
  end

  system :legacy_units do
    unit "R", value: "0.000258 C/kg", aliases: ["röntgen", "roentgen", "roentgens"]
  end
end
