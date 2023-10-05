# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Pressure = UnitMeasurements.build do
  primitive "Pa"

  system :metric do
    si_unit "Pa", aliases: ["pascal", "pascals"]

    unit "bar", value: "100 kPa", aliases: ["bars"]
  end

  system :centimetre_gram_second do
    unit "Ba", value: "0.1 Pa", aliases: ["barye", "baryes"]
  end

  system :metre_tonne_second do
    unit "pz", value: "1 kPa", aliases: ["pièze"]
  end

  unit "at", value: "98066.5 Pa", aliases: ["technical atmosphere", "technical atmospheres"]
  unit "atm", value: "101325 Pa", aliases: ["atmosphere", "atmospheres"]
  unit "Torr", value: [Rational(1, 760), "atm"], aliases: ["torr"]
end
