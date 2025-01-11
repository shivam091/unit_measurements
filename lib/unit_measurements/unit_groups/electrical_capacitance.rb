# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::ElectricalCapacitance = UnitMeasurements.build do
  primitive "F"

  system :metric do
    si_unit "F", aliases: ["farad", "farads"]

    unit "C/V", value: "1 F", aliases: ["coulomb/volt", "coulombs/volt", "coulomb per volt", "coulombs per volt"]
    unit "abF", value: "1e+9 F", aliases: ["abfarad", "abfarads"]
    unit "statF", value: "1.1127e-12 F", aliases: ["statfarad", "statfarads"]
  end
end
