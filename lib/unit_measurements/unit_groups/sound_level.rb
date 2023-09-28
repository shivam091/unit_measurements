# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::SoundLevel = UnitMeasurements.build do
  system :metric do
    primitive :dB

    si_unit :B, aliases: [:bel, :bels]
  end

  unit :Np, value: [(20 / Math.log(10)), :dB], aliases: [:neper, :nepers] # (20 / ln(10)) dB
end
