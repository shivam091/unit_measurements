# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Elastance = UnitMeasurements.build do
  system :metric do
    primitive :D

    si_unit :D, aliases: [:"F⁻¹", :daraf, :darafs, :"reciprocal farad", :"reciprocal farads"]
    unit :"V/C", value: "1 D", aliases: [:"V·C⁻¹", :"volt/coulomb", :"volts/coulomb", :"volt per coulomb", :"volts per coulomb"]
  end
end
