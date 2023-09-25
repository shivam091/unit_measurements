# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Quantity = UnitMeasurements.build do
  unit :pc, aliases: [:pcs, :piece, :pieces]

  unit :pr, value: "2 pc", aliases: [:pair, :pairs]
  unit :dz, value: "6 pr", aliases: [:doz, :dozen, :dozens]
  unit :gr, value: "12 doz", aliases: [:gross, :grosses]
  unit :gg, value: "12 gr", aliases: [:"great gross", :"great grosses", :"grand gross", :"grand grosses", :"dozen gross", :"dozen grosses"]
end
