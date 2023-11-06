# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Energy = UnitMeasurements.build do
  primitive "J"

  system :metric do
    si_unit "J", aliases: ["joule", "joules"]
    si_unit "cal", value: "4.1868 J", aliases: ["calorie", "calories"]

    unit "eV", value: "1.602176634e-19 J", aliases: ["electronvolt", "electron volt", "electron-volt"]

    unit "W⋅s", value: "1 J", aliases: ["W*s", "watt-second"]
    unit "W⋅h", value: "3600 J", aliases: ["W*h", "watt-hour"]
    unit "kW⋅h", value: "3.6e+6 J", aliases: ["kW*h", "kilowatt-hour"]
  end

  system :centimetre_gram_second do
    unit "erg", value: "1e-7 J", aliases: ["ergs"]
  end

  system :us_customary do
    si_unit "BTU", value: "1055.05585262 J", aliases: ["Btu", "british thermal unit", "british thermal units"]

    unit "thm", value: "100 kBTU", aliases: ["therm", "therms"]
    unit "quad", value: "1.05505585262e+18 J", aliases: ["quads"]

    unit "ft⋅lbf", value: "1.3558179483314004 J", aliases: ["ft*lbf", "ft⋅lb", "ft*lb", "foot-pound force"]
    unit "in⋅lbf", value: "0.1129848290276167 J", aliases: ["in*lbf", "in⋅lb", "in*lb", "inch-pound force"]
  end

  system :foot_pound_second do
    unit "ft⋅pdl", value: "4.21401100938048e-2 J", aliases: ["ft*pdl", "foot-poundal"]
  end

  system :metre_tonne_second do
    unit "th", value: "4.1868e+6 J", aliases: ["thermie", "thermies"]
  end

  system :gravitational_metric do
    unit "kp⋅m", value: "9.80665 J", aliases: ["kpm", "kp*m", "kilopond-metre", "kilopond-meter"]
  end

  system :imperial do
    unit "hp⋅h", value: "2.685e+13 erg", aliases: ["hp*h", "horsepower-hour"]
  end

  unit "Ry", value: "2.179872e-18 J", aliases: ["rydberg"]
  unit "Ha", value: "4.359744e-18 J", aliases: ["hartree", "atomic unit of energy"]
  unit "boe", value: "5.86152 GJ", aliases: ["barrel of oil equivalent", "barrels of oil equivalent"]
  unit "tce", value: "29.3076 GJ", aliases: ["TCE", "tonne of coal equivalent", "tonnes of coal equivalent"]
  unit "toe", value: "41.868 GJ", aliases: ["tonne of oil equivalent", "tonnes of oil equivalent"]
  unit "foe", value: "1e+51 erg", aliases: ["bethe"]
  unit "l⋅atm", value: "101.325 J", aliases: ["l*atm", "litre-atmosphere", "liter-atmosphere"]
  unit "gal⋅atm", value: "460.63256925 J", aliases: ["gal*atm", "gallon-atmosphere"]
end
