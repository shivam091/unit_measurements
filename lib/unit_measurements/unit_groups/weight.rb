# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Weight = UnitMeasurements.build do
  primitive "kg"

  system :metric do
    si_unit "g", aliases: ["gram", "grams", "gramme", "grammes"]

    unit "q", value: "100 kg", aliases: ["quintal", "quintals"]
    unit "t", value: "1000 kg", aliases: ["tonne", "tonnes", "metric tonne", "metric tonnes"]
    unit "N", value: "0.10197162129779283 kg", aliases: ["newton", "newtons"]

    unit "ct", value: "200 mg", aliases: ["carat", "carats"]
    unit "Da", value: "1.660538921e-27 kg", aliases: ["dalton", "daltons"]
  end

  system :imperial do
    unit "s", value: "20 gr", aliases: ["scruple", "scruples"]

    unit "lb", value: "0.45359237 kg", aliases: ["lbs", "lbm", "pound-mass", "pound", "pounds", "#"]
    unit "st", value: "14 lb", aliases: ["stone", "stones"]
    unit "oz", value: "1/16 lb", aliases: ["ounce", "ounces"]
    unit "dr", value: "1/16 oz", aliases: ["dram", "drams"]
    unit "gr", value: "1/7000 lb", aliases: ["grain", "grains"]

    unit "drt", value: "60 gr", aliases: ["troy dram", "troy drams"]
    unit "ozt", value: "480 gr", aliases: ["troy ounce", "troy ounces"]
    unit "lbt", value: "5760 gr", aliases: ["troy pound", "troy pounds"]
    unit "dwt", value: "1/20 ozt", aliases: ["pwt", "pennyweight", "pennyweights"]
  end

  system :foot_pound_second do
    unit "slug", value: "32.17404856 lb", aliases: ["slugs"]
  end
end
