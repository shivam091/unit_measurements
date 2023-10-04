# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::PlaneAngle = UnitMeasurements.build do
  primitive "rad"

  system :metric do
    si_unit "rad", aliases: ["radian", "radians"]

    unit "gon", value: [(Math::PI / 200), "rad"], aliases: ["ᵍ", "grad", "gradian", "gradians"] # (π / 200) rad
  end

  unit "deg", value: [(Math::PI / 180), "rad"], aliases: ["°", "degree", "degrees"] # (π / 180) rad
  unit "cir", value: [360, "deg"], aliases: ["circle", "circles"] # (2 * π) rad
  unit "mil", value: [Rational(1, 6400), "cir"], aliases: ["mils"] # ((2 * π) / 6400) rad
  unit "rev", value: [1, "cir"], aliases: ["revolution", "revolutions"] # (2 * π) rad

  unit "brad", value: [(Math::PI / 128), "rad"], aliases: ["b°", "bdeg", "binary degree", "binary radian", "binary degrees", "binary radians"] # (π / 128) rad

  unit "arcmin", value: [Rational(1, 60), "deg"], aliases: ["′", "amin", "arcminute", "arcminutes"] # ((π / 180) / 60) rad
  unit "arcsec", value: [Rational(1, 60), "arcmin"], aliases: ["″", "asec", "arcsecond", "arcseconds"] # ((π / 180) / 3600) rad
end
