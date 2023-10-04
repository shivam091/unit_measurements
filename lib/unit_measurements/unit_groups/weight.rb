# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Weight = UnitMeasurements.build do
  primitive "kg"

  system :metric do
    si_unit "g", aliases: ["gram", "grams", "gramme", "grammes"]

    unit "q", value: "100 kg", aliases: ["quintal", "quintals"]
    unit "t", value: "1000 kg", aliases: ["tonne", "tonnes", "metric tonne", "metric tonnes"]
  end
end
