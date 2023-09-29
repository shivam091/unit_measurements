# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::MagneticInduction = UnitMeasurements.build do
  system :metric do
    primitive :T

    si_unit :T, aliases: [:tesla, :teslas]
  end

  system :centimetre_gram_second do
    primitive :G

    unit :G, value: "1e-4 T", aliases: [:Gs, :gauss, :gausses]
  end
end
