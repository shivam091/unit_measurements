# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Length = UnitMeasurements.build do
  primitive "m"

  system :metric do
    si_unit "m", aliases: ["meter", "metre", "meters", "metres"]
  end

  system :imperial do
    unit "in", value: "25.4 mm", aliases: ['"', "inch", "inches"]
    unit "ft", value: "12 in", aliases: ["'", "foot", "feet"]
    unit "yd", value: "3 ft", aliases: ["yard", "yards"]
    unit "mi", value: "1760 yd", aliases: ["mile", "miles", "statute mile", "international mile"]
    unit "ch", value: "22 yd", aliases: ["chain", "chains"]
    unit "th", value: "1/1000 in", aliases: ["thou", "thousandth of an inch"]
    unit "ftm", value: "6 ft", aliases: ["fathom", "fathoms"]
    unit "fur", value: "220 yd", aliases: ["furlong", "furlongs"]
    unit "nmi", value: "1852 m", aliases: ["NMI", "M", "NM", "nautical mile", "nautical miles"]
    unit "rod", value: "16 1/2 ft", aliases: ["rods", "perch", "pole", "lug"]
  end

  system :astronomical do
    unit "au", value: "149597870700 m", aliases: ["astronomical unit", "astronomical units"]
    unit "pc", value: [Rational(648000, Math::PI), "au"], aliases: ["parsec", "parsecs"]
  end
end
