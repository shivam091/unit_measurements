# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Weight = UnitMeasurements.build do
  si_unit :g, aliases: %i[gram grams gramme grammes]

  unit :q, value: "100 kg", aliases: %i[quintal quintals]
  unit :t, value: "10 q", aliases: %i[tonne tonnes metric\ tonne metric\ tonnes]
end
