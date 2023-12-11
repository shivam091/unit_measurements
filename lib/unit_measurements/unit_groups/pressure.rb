# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Pressure = UnitMeasurements.build do
  primitive "Pa"

  system :metric do
    si_unit "Pa", aliases: ["pascal", "pascals"]

    unit "bar", value: "100 kPa", aliases: ["bars"]
    unit "atm", value: "101325 Pa", aliases: ["atmosphere", "atmospheres"]
    unit "Torr", value: "1/760 atm", aliases: ["torr"]

    unit "μmHg", value: "0.133322387415 Pa", aliases: ["micrometer of mercury", "micrometers of mercury", "micrometre of mercury", "micrometres of mercury"]
    unit "mmHg", value: "133.322387415 Pa", aliases: ["millimeter of mercury", "millimeters of mercury", "millimetre of mercury", "millimetres of mercury"]
    unit "cmHg", value: "1333.22387415 Pa", aliases: ["centimeter of mercury", "centimeters of mercury", "centimetre of mercury", "centimetres of mercury"]

    unit "mH₂O", value: "9.80665 kPa", aliases: ["mH2O", "meter of water", "meters of water", "metre of water", "metres of water"]
    unit "dmH₂O", value: "980.665 Pa", aliases: ["dmH2O", "decimeter of water", "decimeters of water", "decimetre of water", "decimetres of water"]
    unit "cmH₂O", value: "98.0665 Pa", aliases: ["cmH2O", "centimeter of water", "centimeters of water", "centimetre of water", "centimetres of water"]
    unit "mmH₂O", value: "9.80665 Pa", aliases: ["mmH2O", "millimeter of water", "millimeters of water", "millimetre of water", "millimetres of water"]

    unit "kgf/m²", value: "9.80665 Pa", aliases: ["kgf/m^2", "kilogram-force per square metre", "kilogramme-force per square metre"]
    unit "kgf/mm²", value: "9.80665 MPa", aliases: ["kgf/mm^2", "kilogram-force per square millimetre", "kilogramme-force per square millimetre"]
    unit "kgf/dm²", value: "980.665 Pa", aliases: ["kgf/dm^2", "kilogram-force per square decimetre", "kilogramme-force per square decimetre"]
  end

  system :imperial do
    unit "psf", value: "47.880259 Pa", aliases: ["lb/ft²", "lb/ft^2", "pound per square foot", "pounds per square foot"]
    unit "psi", value: "6.894757 kPa", aliases: ["lb/in²", "lb/in^2", "pound per square inch", "pounds per square inch"]
    unit "ksi", value: "1000 psi", aliases: ["kip per square inch", "kilopound per square inch", "kilopounds per square inch"]

    unit "LT/ft²", value: "1.0725178011595e+5 Pa", aliases: ["LT/ft^2", "long ton per square foot", "long tons per square foot"]
    unit "pdl/ft²", value: "1.488164 Pa", aliases: ["pdl/ft^2", "poundal per square foot", "poundals per square foot"]
  end

  system :us_customary do
    unit "inHg", value: "3.386388640341 kPa", aliases: ["″Hg", "inch of mercury", "inches of mercury"]
    unit "ftHg", value: "40.636663684092 kPa", aliases: ["′Hg", "foot of mercury", "feet of mercury"]

    unit "ftH₂O", value: "2.98898 kPa", aliases: ["ftH2O", "foot of water", "feet of water"]
    unit "inH₂O", value: "249.0889 Pa", aliases: ["inH2O", "Aq", "inAq", "inch of water", "inches of water", "inch of water gauge", "inches of water gauge", "inch of water column", "inches of water column"]

    unit "tn/ft²", value: "9.5760518e+4 Pa", aliases: ["tn/ft^2", "ton per square foot", "tons per square foot", "short ton per square foot", "short tons per square foot"]
  end

  system :centimetre_gram_second do
    unit "Ba", value: "0.1 Pa", aliases: ["barye", "baryes"]
  end

  system :metre_tonne_second do
    unit "pz", value: "1 kPa", aliases: ["pieze", "pièze"]
  end

  system :gravitational_metric do
    unit "at", value: "98066.5 Pa", aliases: ["technical atmosphere", "technical atmospheres"]
  end

  system :planck_units do
    unit "Pₚ", value: "4.63309e+113 Pa", aliases: ["planck pressure", "quantum pressure"]
  end
end
