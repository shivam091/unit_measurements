# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::MagnetomotiveForce = UnitMeasurements.build do
  primitive "A⋅t"

  system :metric do
    unit "A⋅t", aliases: ["A*t", "ampere-turn"]

    unit "Gb", value: [Rational(10, (4 * Math::PI)), "A⋅t"], aliases: ["Gi", "gilbert", "gilberts"]
  end
end
