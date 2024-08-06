# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Volume = UnitMeasurements.build do
  primitive "m³"

  system :metric do
    si_unit "l", aliases: ["liter", "litre", "liters", "litres"]

    unit "λ", value: "1e-9 m³", aliases: ["lambda", "lambdas"]
    unit "m³", value: "1000 l", aliases: ["m^3", "cu m", "cubic meter", "cubic meters", "cubic metre", "cubic metres"]
    unit "st", value: "1 m³", aliases: ["stère", "stere", "steres"]

    unit "mm³", value: "1e-9 m³", aliases: ["mm^3", "cu mm", "cubic millimeter", "cubic millimeters", "cubic millimetre", "cubic millimetres"]
    unit "cm³", value: "1e-6 m³", aliases: ["cm^3", "cu cm", "cubic centimeter", "cubic centimeters", "cubic centimetre", "cubic centimetres"]
    unit "dm³", value: "1 l", aliases: ["dm^3", "cu dm", "cubic decimeter", "cubic decimeters", "cubic decimetre", "cubic decimetres"]
    unit "km³", value: "1e+9 m³", aliases: ["km^3", "cu km", "cubic kilometer", "cubic kilometers", "cubic kilometre", "cubic kilometres"]
  end

  system :imperial do
    unit "in³", value: "16.387064 ml", aliases: ["in^3", "cu in", "cubic inch", "cubic inches"]
    unit "ft³", value: "1728 in³", aliases: ["ft^3", "cu ft", "cubic foot", "cubic feet"]
    unit "yd³", value: "27 ft³", aliases: ["yd^3", "cu yd", "cubic yard", "cubic yards"]
    unit "mi³", value: "5451776000 yd³", aliases: ["mi^3", "cu mi", "cubic mile", "cubic miles"]
    unit "ftm³", value: "216 ft³", aliases: ["ftm^3", "cu ftm", "cubic fathom", "cubic fathoms"]

    unit "c", value: "284.130625e-6 m³", aliases: ["cup", "cups"]

    unit "qt", value: "0.0011365225 m³", aliases: ["quart", "quarts"]
    unit "pk", value: "2 gal", aliases: ["peck", "pecks"]
    unit "gi", value: "1/2 c", aliases: ["gill", "gills"]
    unit "pt", value: "1/8 gal", aliases: ["pint", "pints"]
    unit "gt", value: "1/288 floz", aliases: ["gtt", "drop", "drops"]

    unit "gal", value: "4.54609 dm³", aliases: ["gallon", "gallons"]
    unit "bsh", value: "8 gal", aliases: ["bu", "bushel", "bushels"]
    unit "min", value: "1/480 floz", aliases: ["minim", "minims"]
    unit "bbl", value: "36 gal", aliases: ["barrel", "barrels"]
    unit "tsp", value: "1/24 gi", aliases: ["teaspoon", "teaspoons"]
    unit "bkt", value: "4 gal", aliases: ["bucket", "buckets"]
    unit "hhd", value: "2 bbl", aliases: ["hogshead", "hogsheads"]
    unit "fls", value: "1/24 floz", aliases: ["fluid scruple", "fluid scruples"]
    unit "fir", value: "0.25 bbl", aliases: ["firkin", "firkins"]

    unit "dspn", value: "10 ml", aliases: ["dsp", "dstspn", "dessertspoon", "dessertspoons"]
    unit "tbsp", value: "3 tsp", aliases: ["tbs", "tablespoon", "tablespoons"]
    unit "floz", value: "1/160 gal", aliases: ["fluid ounce", "fluid ounces"]
    unit "fldr", value: "1/8 floz", aliases: ["fluid drachm", "fluid drachms"]
  end

  system :us_customary do
    unit "cd", value: "128 ft³", aliases: ["cord", "cords"]

    unit "usgal", value: "3.785411784 dm³", alias: ["us-gallon", "us-gal"]
    unit "pot", value: "2 qt", aliases: ["pottle", "pottles"]
    unit "bdft", value: "144 in³", aliases: ["bf", "fbm", "board-foot", "board-feet"]

    unit "ac⋅ft", value: "43560 ft³", aliases: ["acre-foot", "acre-feet"]
    unit "ac⋅in", value: "6272640 in³", aliases: ["acre-inch", "acre-inches"]

    unit "cd-ft", value: "1/8 cd", aliases: ["cord-foot", "cord-feet"]
  end

  system :planck_units do
    unit "Vₚ", value: "4.2217e-105 m³", aliases: ["planck volume", "quantum volume"]
  end
end
