# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::LuminousIntensity = UnitMeasurements.build do
  system :metric do
    primitive :cd

    si_unit :cd, aliases: [:candela, :candelas]
  end

  unit :hk, value: "0.92 cd", aliases: [:hefnerkerze]
end
