# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::ElectricPotential = UnitMeasurements.build do
  primitive "V"

  system :metric do
    si_unit "V", aliases: ["volt", "volts"]

    unit "W/A", value: "1 V", aliases: ["watt per ampere", "watts per ampere"]
    unit "J/C", value: "1 V", aliases: ["joule per coulomb", "joules per coulomb"]

    unit "abV", value: "1e-8 V", aliases: ["abvolt", "abvolts"]
    unit "statV", value: "299.792458 V", aliases: ["statvolt", "statvolts"]
  end
end
