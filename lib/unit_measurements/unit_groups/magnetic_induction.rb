# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::MagneticInduction = UnitMeasurements.build do
  primitive "T"

  system :metric do
    si_unit "T", aliases: ["tesla", "teslas"]
  end

  system :centimetre_gram_second do
    unit "G", value: "1e-4 T", aliases: ["Gs", "gauss"]
  end
end
