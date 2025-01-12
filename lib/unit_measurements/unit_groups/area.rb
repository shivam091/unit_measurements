# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Area = UnitMeasurements.build do
  primitive "m²"

  system :metric do
    unit "a", value: "100 m²", aliases: ["are", "ares"]
    unit "b", value: "1e-28 m²", aliases: ["barn", "barns"]
    unit "m²", aliases: ["m^2", "sq m", "square meter", "square meters", "square metre", "square metres"]

    unit "ha", value: "10000 m²", aliases: ["hectare", "hectares"]
    unit "km²", value: "1e+6 m²", aliases: ["km^2", "sq km", "square kilometer", "square kilometers", "square kilometre", "square kilometres"]

    unit "dun", value: "10 a", aliases: ["ḍn", "dunam", "dunams"]
  end

  system :imperial do
    unit "ac", value: "4046.8564224 m²", aliases: ["acre", "acres"]

    unit "in²", value: "0.00064516 m²", aliases: ["in^2", "sq in", "square inch", "square inches"]
    unit "ft²", value: "144 in²", aliases: ["ft^2", "sq ft", "square foot", "square feet"]
    unit "yd²", value: "9 ft²", aliases: ["yd^2", "sq yd", "square yard", "square yards"]
    unit "mi²", value: "3097600 yd²", aliases: ["mi^2", "sq mi", "square mile", "square miles"]
    unit "ch²", value: "484 yd²", aliases: ["ch^2", "sq ch", "square chain", "square chains"]
    unit "rd²", value: "272 1/4 ft²", aliases: ["rd^2", "sq rd", "square rod", "square rods"]

    unit "fur²", value: "48400 yd²", aliases: ["fur^2", "sq fur", "square furlong", "square furlongs"]
    unit "lnk²", value: "4.0468564224e-2 m²", aliases: ["link^2", "sq lnk", "square link", "square links"]
  end

  system :us_customary do
    unit "sec", value: "640 ac", aliases: ["sect", "section", "sections"]
    unit "twp", value: "36 sec", aliases: ["survey township", "survey townships"]

    unit "us_ac", value: "4046.873 m²", aliases: ["us acre", "us acres"]
    unit "ft² (US)", value: "0.09290341161327482 m²", aliases: ["ft^2 (US)", "sq ft (US)", "square foot (US)", "square feet (US)"]
    unit "mi² (US)", value: "2.58999847e+6 m²", aliases: ["mi^2 (US)", "sq mi (US)", "square mile (US)", "square miles (US)"]
    unit "ch² (US)", value: "404.6873 m²", aliases: ["ch^2 (US)", "sq ch (US)", "square chain (US)", "square chains (US)"]

    unit "sq_ft", value: "0.09290341161327482 m²", aliases: ["us square foot", "us square feet"]
    unit "sq_mi", value: "2.58999847e+6 m²", aliases: ["us square mile", "us square miles"]
    unit "sq_ch", value: "404.6873 m²", aliases: ["us square chain", "us square chains"]
  end

  system :planck_units do
    unit "Aₚ", value: "2.6121e-70 m²", aliases: ["planck area", "quantum area"]
  end

  unit "bd", value: "0.00774192 m²", aliases: ["board", "boards"]
  unit "ro", value: "1/4 ac", aliases: ["rood"]
end
