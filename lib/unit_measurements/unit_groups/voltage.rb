# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Voltage = UnitMeasurements.build do
  primitive :V

  system :metric do
    si_unit :V, aliases: [:volt, :volts]

    unit :"W/A", value: "1 V", aliases: [:"W·A⁻¹", :"watt per ampere", :"watts per ampere"]
    unit :"J/C", value: "1 V", aliases: [:"J·C⁻¹", :"joule per coulomb", :"joules per coulomb"]
  end

  system :centimetre_gram_second do
    unit :abV, value: "1e-8 V", aliases: [:abvolt, :abvolts]
    unit :statV, value: "299.792458 V", aliases: [:statvolt, :statvolts]
  end
end
