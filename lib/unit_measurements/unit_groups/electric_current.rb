# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::ElectricCurrent = UnitMeasurements.build do
  primitive "A"

  system :metric do
    si_unit "A", aliases: ["amp", "ampere", "amperes"]
  end

  system :centimetre_gram_second do
    unit "Bi", value: "10 A", aliases: ["biot", "biots"]
    unit "abA", value: "10 A", aliases: ["abampere", "abamperes"]
    unit "statA", value: "3.33564e-10 A", aliases: ["statampere", "statamperes"]
  end
end
