# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::ElectricalElastance = UnitMeasurements.build do
  primitive "D"

  system :metric do
    si_unit "D", aliases: ["F⁻¹", "daraf", "darafs", "reciprocal farad", "reciprocal farads"]

    unit "V/C", value: "1 D", aliases: ["volt/coulomb", "volts/coulomb", "volt per coulomb", "volts per coulomb"]
  end
end
