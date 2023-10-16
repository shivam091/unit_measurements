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
  end

  system :imperial do
    unit "ac", value: "4046.8564224 m²", aliases: ["acre", "acres"]
    unit "in²", value: "0.00064516 m²", aliases: ["in^2", "sq in", "square inch", "square inches"]
    unit "ft²", value: "144 in²", aliases: ["ft^2", "sq ft", "square foot", "square feet"]
    unit "yd²", value: "9 ft²", aliases: ["yd^2", "sq yd", "square yard", "square yards"]
    unit "mi²", value: "3097600 yd²", aliases: ["mi^2", "sq mi", "square mile", "square miles"]
    unit "ch²", value: "484 yd²", aliases: ["ch^2", "sq ch", "square chain", "square chains"]
    unit "fur²", value: "48400 yd²", aliases: ["fur^2", "sq fur", "square furlong", "square furlongs"]
    unit "rod²", value: "272 1/4 ft²", aliases: ["rod^2", "sq rod", "square rod", "square rods"]
  end
end
