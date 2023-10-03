# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::MagneticField = UnitMeasurements.build do
  primitive "Oe"

  system :metric do
    si_unit "Oe", aliases: ["oersted", "oersteds"]

    unit "A/m", value: [(Math::PI / 250), "Oe"], aliases: ["A·m⁻¹", "ampere/meter", "ampere/metre", "ampere per meter", "ampere per metre", "amperes per meter", "amperes per metre"]
   end
end
