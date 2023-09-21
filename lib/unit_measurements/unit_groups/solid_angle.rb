# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::SolidAngle = UnitMeasurements.build do
  si_unit :sr, aliases: [:steradian, :steradians]

  unit :sp, value: [(4 * Math::PI), :sr], aliases: [:spat, :spats] # (4 * π) sr
  unit :deg², value: [((Math::PI / 180) ** 2), :sr], aliases: [:"(°)²", :"sq °", :"square degree", :"square degrees"] # (π / 180)² sr
  unit :arcmin², value: [(Rational(1, 60) ** 2), :deg²], aliases: [:"(′)²", :"sq ′", :"square minute of arc", :"square minutes of arc"] # ((π / 180) * (1 / 60))² sr
  unit :arcsec², value: [(Rational(1, 60) ** 2), :arcmin²], aliases: [:"(″)²", :"sq ″", :"square second of arc", :"square seconds of arc"] # ((π / 180) * (1 / 3600))² sr
end
