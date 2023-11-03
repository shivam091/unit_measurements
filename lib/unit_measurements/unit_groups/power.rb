# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Power = UnitMeasurements.build do
  primitive "W"

  system :metric do
    si_unit "W", aliases: ["watt", "watts"]

    unit "hp (M)", value: "735.49875 W", aliases: ["PS", "metric horsepower"]
  end

  system :imperial do
    unit "hp", value: "745.69987158227022 W", aliases: ["hp (I)", "horsepower"]
  end

  system :centimetre_gram_second do
    unit "erg/s", value: "1e-7 W", aliases: ["erg per second", "ergs per second"]
  end

  unit "cal/s", value: "4.1868 W", aliases: ["calorie per second", "calories per second"]
end
