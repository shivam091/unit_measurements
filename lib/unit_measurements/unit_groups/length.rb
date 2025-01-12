# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Length = UnitMeasurements.build do
  primitive "m"

  system :metric do
    si_unit "m", aliases: ["meter", "metre", "meters", "metres"]

    unit "Å", value: "1e-10 m", aliases: ["angstrom", "angstroms", "ångström"]
    unit "μ", value: "1 μm", aliases: ["micron", "microns"]

    unit "metric_cb", value: "185.2 m", aliases: ["metric cable length"]
  end

  system :imperial do
    unit "h", value: "4 in", aliases: ["hh", "hand", "hands"]

    unit "in", value: "25.4 mm", aliases: ['"', "inch", "inches"]
    unit "ft", value: "12 in", aliases: ["'", "foot", "feet"]
    unit "yd", value: "3 ft", aliases: ["yard", "yards"]
    unit "mi", value: "5280 ft", aliases: ["mile", "miles", "statute mile", "international mile", "statute miles", "international miles"]
    unit "ch", value: "22 yd", aliases: ["chain", "chains"]
    unit "th", value: "1/1000 in", aliases: ["thou", "thousandth of an inch", "mil", "mils"]
    unit "nl", value: "3 nmi", aliases: ["NL", "nleague", "nleagues", "nautical league", "nautical leagues"]
    unit "rd", value: "16 1/2 ft", aliases: ["rod", "rods", "perch", "pole", "lug"]
    unit "cb", value: "608 ft", aliases: ["cable length"]
    unit "qr", value: "1/4 yd", aliases: ["quarter", "quarters"]
    unit "bc", value: "1/3 in", aliases: ["b.c.", "barleycorn", "barleycorns"]

    unit "ftm", value: "6 ft", aliases: ["fathom", "fathoms"]
    unit "fur", value: "220 yd", aliases: ["furlong", "furlongs"]
    unit "nmi", value: "1852 m", aliases: ["NMI", "M", "NM", "nautical mile", "nautical miles"]
    unit "lnk", value: "33/50 ft", aliases: ["l", "li", "link", "links"]
    unit "lea", value: "3 mi", aliases: ["league", "leagues"]

  end

  system :us_customary do
    unit "U", value: "1.75 in", aliases: ["RU", "rack unit", "rack units"]
    unit "sft", value: "1200/3937 m", aliases: ["sfoot", "sfeet", "survey-foot", "survey-feet"]

    unit "us_cb", value: "720 ft", aliases: ["us cable length"]
  end

  system :astronomical do
    unit "S", value: "1e+9 km", aliases: ["spat", "spats"]

    unit "au", value: "149597870700 m", aliases: ["astronomical unit", "astronomical units"]
    unit "pc", value: [Rational(648000, Math::PI), "au"], aliases: ["parsec", "parsecs"]

    unit "ls", value: "299792458 m", aliases: ["light-second", "light-seconds"]
    unit "lmin", value: "60 ls", aliases: ["light-minute", "light-minutes"]
    unit "lh", value: "60 lmin", aliases: ["light-hour", "light-hours"]
    unit "ld", value: "24 lh", aliases: ["light-day", "light-days"]
    unit "lw", value: "7 ld", aliases: ["light-week", "light-weeks"]
    unit "lm", value: "30 ld", aliases: ["light-month", "light-months"]
    unit "ly", value: "365.25 ld", aliases: ["light-year", "light-years"]
  end

  system :planck_units do
    unit "lₚ", value: "1.616255e-35 m", aliases: ["planck length", "quantum length"]
  end

  unit "z", value: "1.302773e+26 m", aliases: ["red-shift", "redshift", "redshifts"]
end
