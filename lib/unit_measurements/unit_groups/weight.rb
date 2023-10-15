# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Weight = UnitMeasurements.build do
  primitive "kg"

  system :metric do
    si_unit "g", aliases: ["gram", "grams", "gramme", "grammes"]

    unit "q", value: "100 kg", aliases: ["quintal", "quintals"]
    unit "t", value: "1000 kg", aliases: ["tonne", "tonnes", "metric tonne", "metric tonnes"]
    unit "ct", value: "200 mg", aliases: ["carat", "carats"]
    unit "Da", value: "1.660538921e-27 kg", aliases: ["dalton", "daltons"]
  end

  system :imperial do
    unit "lb", value: [Rational(45_359_237, 1e+8), "kg"], aliases: ["lbs", "lbm", "pound-mass", "pound", "pounds", "#"]
    unit "st", value: "14 lb", aliases: ["stone", "stones"]
    unit "oz", value: [Rational(1, 16), "lb"], aliases: ["ounce", "ounces"]
  end

  system :troy_weight do
    unit "gr", value: [Rational(1, 7000), "lb"], aliases: ["grain", "grains"]
    unit "ozt", value: "480 gr", aliases: ["troy ounce", "troy ounces"]
    unit "dwt", value: [Rational(1, 20), "ozt"], aliases: ["pennyweight", "pennyweights"]
  end

  system :avoirdupois do
    unit "dr", value: [Rational(1, 16), "oz"], aliases: ["dram", "drams"]
  end

  system :foot_pound_second do
    unit "slug", value: "32.1740 lb", aliases: ["slugs"]
  end
end
