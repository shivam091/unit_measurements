# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Power = UnitMeasurements.build do
  primitive "W"

  system :metric do
    si_unit "W", aliases: ["watt", "watts"]

    unit "p", value: "980.665 W", aliases: ["poncelet", "poncelets"]

    unit "hp (M)", value: "735.49875 W", aliases: ["PS", "metric horsepower"]

    unit "kgf⋅m", value: "9.80665 W", aliases: ["kgf*m", "kilogramme-force meter", "kilogram-force meter"]

    unit "cal/s", value: "4.1868 W", aliases: ["calorie per second", "calories per second"]
    unit "cal/min", value: "0.06978 W", aliases: ["calorie per minute", "calories per minute"]
    unit "cal/h", value: "0.001163 W", aliases: ["calorie per hour", "calories per hour"]

    unit "l·atm/s", value: "101.325 W", aliases: ["l*atm/s", "litre-atmosphere per second", "liter-atmosphere per second"]
    unit "l·atm/min", value: "1.68875 W", aliases: ["l*atm/min", "litre-atmosphere per minute", "liter-atmosphere per minute"]
    unit "l·atm/h", value: "0.028145833333333335 W", aliases: ["l*atm/h", "litre-atmosphere per hour", "liter-atmosphere per hour"]

    unit "atm⋅cm³/s", value: "0.101325 W", aliases: ["atm*cm^3/s", "atmosphere-cubic centimetre per second", "atmosphere-cubic centimeter per second"]
    unit "atm⋅cm³/min", value: "1.68875e-3 W", aliases: ["atm*cm^3/min", "atmosphere-cubic centimetre per minute", "atmosphere-cubic centimeter per minute"]
    unit "atm⋅cm³/h", value: "2.814583333333333e-5 W", aliases: ["atm*cm^3/h", "atmosphere-cubic centimetre per hour", "atmosphere-cubic centimeter per hour"]
  end

  system :imperial do
    unit "hp", value: "745.69987158227022 W", aliases: ["hp (I)", "horsepower"]

    unit "ft⋅lbf/s", value: "1.3558179483314004 W", aliases: ["ft*lbf/s", "foot pound-force per second"]
    unit "ft⋅lbf/min", value: "0.02259696580552334 W", aliases: ["ft*lbf/min", "foot pound-force per minute"]
    unit "ft⋅lbf/h", value: "0.00037661609675872 W", aliases: ["ft*lbf/h", "foot pound-force per hour"]

    unit "atm⋅ft³/s", value: "2.8692044809344e+3 W", aliases: ["atm*ft^3/s", "atmosphere-cubic foot per second"]
    unit "atm⋅ft³/min", value: "47.82007468224 W", aliases: ["atm*ft^3/min", "atmosphere-cubic foot per minute"]
    unit "atm⋅ft³/h", value: "0.79700124704 W", aliases: ["atm*ft^3/h", "atmosphere-cubic foot per hour"]
  end

  system :us_customary do
    unit "BTU/s", value: "1055.05585262 W", aliases: ["british thermal unit per second", "british thermal units per second"]
    unit "BTU/min", value: "17.584264210333 W", aliases: ["british thermal unit per minute", "british thermal units per minute"]
    unit "BTU/h", value: "0.29307107017222 W", aliases: ["british thermal unit per hour", "british thermal units per hour"]
  end

  system :centimetre_gram_second do
    unit "erg/s", value: "1e-7 W", aliases: ["erg per second", "ergs per second"]
  end

  system :planck_units do
    unit "Pₚ", value: "3.6283e+52 W", aliases: ["planck power", "quantum power"]
  end

  unit "lusec", value: "133.3224 μW", aliases: ["lusecs"]
end
