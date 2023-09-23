# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Length = UnitMeasurements.build do
  si_unit "m", aliases: ["meter", "metre", "meters", "metres"]

  unit "in", value: "25.4 mm", aliases: ['"', "inch", "inches"]
  unit "ft", value: "12 in", aliases: ["'", "foot", "feet"]
  unit "yd", value: "3 ft", aliases: ["yard", "yards"]
  unit "mi", value: "1760 yd", aliases: ["mile", "miles"]
end
