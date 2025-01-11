# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::ElectricalResistance = UnitMeasurements.build do
  primitive "Ω"

  system :metric do
    si_unit "Ω", aliases: ["ω", "ohm", "ohms", "reciprocal siemens"]

    unit "S", value: "1 Ω", aliases: ["siemens", "mho", "mhos"]
    unit "abΩ", value: "1e-9 Ω", aliases: ["abω", "abohm", "abohms"]
    unit "statΩ", value: "8.98755178737e+11 Ω", aliases: ["statω", "statohm", "statohms"]
    unit "V/A", value: "1 Ω", aliases: ["volt/amp", "volts/amp", "volt/ampere", "volts/ampere", "volt per ampere", "volts per ampere"]
  end
end
