# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::ElectricCharge = UnitMeasurements.build do
  primitive "C"

  system :metric do
    si_unit "C", aliases: ["coulomb", "coulombs"]
  end

  system :centimetre_gram_second do
    unit "Fr", value: "3.335641e-10 C", aliases: ["franklin", "franklins"]
    unit "Fd", value: "96485.3377164 C", aliases: ["faraday", "faradays"]
    unit "abC", value: "10 C", aliases: ["abcoulomb", "abcoulombs"]
    unit "statC", value: "3.335641e-10 C", aliases: ["statcoulomb", "statcoulombs"]
  end
end
