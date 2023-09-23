# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Force = UnitMeasurements.build do
  si_unit "N", aliases: ["newton", "newtons"] # kg·m·s⁻²

  unit "tf", value: "8896.443230521 N", aliases: ["tonne-force"]
  unit "dyn", value: "1e-5 N", aliases: ["dyne", "dynes"]
  unit "kgf", value: "9.80665 N", aliases: ["kilogram-force", "kilogramme-force"]
  unit "ozf", value: "0.27801385095378125 N", aliases: ["ounce-force"]
  unit "lbf", value: "4.4482216152605 N", aliases: ["pound-force"]
  unit "pdl", value: "0.138254954376 N", aliases: ["poundal", "poundals"]
end
