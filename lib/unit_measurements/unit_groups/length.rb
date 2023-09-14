# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Length = UnitMeasurements.build do
  si_unit :m, aliases: %i[meter metre meters metres]

  unit :in, value: "25.4 mm", aliases: %i[" inch inches]
  unit :ft, value: "12 in", aliases: %i[' foot feet]
  unit :yd, value: "3 ft", aliases: %i[yard yards]
  unit :mi, value: "1760 yd", aliases: %i[mile miles]
end
