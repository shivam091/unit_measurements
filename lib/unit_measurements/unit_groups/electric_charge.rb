# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::ElectricCharge = UnitMeasurements.build do
  primitive "C"

  system :metric do
    si_unit "C", aliases: ["coulomb", "coulombs"]

    unit "Fr", value: "3.335641e-10 C", aliases: ["franklin", "franklins"]
    unit "Fd", value: "96485.3377164 C", aliases: ["faraday", "faradays"]
    unit "abC", value: "10 C", aliases: ["abcoulomb", "abcoulombs"]
    unit "statC", value: "3.335641e-10 C", aliases: ["statcoulomb", "statcoulombs"]
  end

  system :planck_units do
    unit "qₚ", value: "1.875545956e-18 C", aliases: ["planck length", "quantum length"]
  end
end
