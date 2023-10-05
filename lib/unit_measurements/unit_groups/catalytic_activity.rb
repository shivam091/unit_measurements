# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::CatalyticActivity = UnitMeasurements.build do
  primitive "kat"

  system :metric do
    si_unit "kat", aliases: ["katal", "katals"]
  end

  unit "U", value: "1/60 μkat", aliases: ["unit", "units", "enzUnit"]
end
