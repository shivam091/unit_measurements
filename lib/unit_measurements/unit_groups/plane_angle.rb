# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::PlaneAngle = UnitMeasurements.build do
  primitive "rad"

  system :metric do
    si_unit "rad", aliases: ["radian", "radians"]

    unit "deg", value: [(Math::PI / 180), "rad"], aliases: ["°", "degree", "degrees", "degree of arc", "degrees of arc", "arcdegree", "arcdegrees"]
    unit "gon", value: [(Math::PI / 200), "rad"], aliases: ["ᵍ", "grad", "gradian", "gradians"]
    unit "arcmin", value: [Rational(1, 60), "deg"], aliases: ["′", "amin", "arcminute", "arcminutes"]
    unit "arcsec", value: [Rational(1, 60), "arcmin"], aliases: ["″", "asec", "arcsecond", "arcseconds"]
  end

  unit "tr", value: [1, "cir"], aliases: ["turn", "turns"]

  unit "cir", value: [360, "deg"], aliases: ["circle", "circles"]
  unit "rev", value: [1, "cir"], aliases: ["revolution", "revolutions"]
  unit "cyc", value: [1, "cir"], aliases: ["cycle", "cycles"]
  unit "mil", value: [Rational(1, 6400), "cir"], aliases: ["mils"]

  unit "brad", value: [(Math::PI / 128), "rad"], aliases: ["b°", "bdeg", "binary degree", "binary radian", "binary degrees", "binary radians"]

  unit "sign", value: "30 deg", aliases: ["signs"]
  unit "octant", value: "45 deg", aliases: ["octants"]
  unit "sextant", value: "60 deg", aliases: ["sextants"]
  unit "quadrant", value: "90 deg", aliases: ["quadrants"]
end
