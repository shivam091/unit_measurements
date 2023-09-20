# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Temperature = UnitMeasurements.build do
  si_unit :K, aliases: [:kelvin, :kelvins]

  unit :°R, value: "5/9 K", aliases: [:R, :°Ra, :Ra, :rankine]
end
