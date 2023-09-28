# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Volume = UnitMeasurements.build do
  system :metric do
    primitive :m³

    si_unit :l, aliases: [:liter, :litre, :liters, :litres]

    unit :m³, value: "1000 l", aliases: [:"m^3", :"cu m", :"cubic meter", :"cubic meters", :"cubic metre", :"cubic metres"]
    unit :mm³, value: "1e-9 m³", aliases: [:"mm^3", :"cu mm", :"cubic millimeter", :"cubic millimeters", :"cubic millimetre", :"cubic millimetres"]
    unit :cm³, value: "1e-6 m³", aliases: [:"cm^3", :"cu cm", :"cubic centimeter", :"cubic centimeters", :"cubic centimetre", :"cubic centimetres"]
    unit :dm³, value: "1 l", aliases: [:"dm^3", :"cu dm", :"cubic decimeter", :"cubic decimeters", :"cubic decimetre", :"cubic decimetres"]
    unit :km³, value: "1e+9 m³", aliases: [:"km^3", :"cu km", :"cubic kilometer", :"cubic kilometers", :"cubic kilometre", :"cubic kilometres"]
  end

  system :imperial do
    primitive :in³

    unit :in³, value: "16.387064 ml", aliases: [:"in^3", :"cu in", :"cubic inch", :"cubic inches"]
    unit :ft³, value: "1728 in³", aliases: [:"ft^3", :"cu ft", :"cubic foot", :"cubic feet"]
    unit :yd³, value: "27 ft³", aliases: [:"yd^3", :"cu yd", :"cubic yard", :"cubic yards"]
    unit :mi³, value: "5451776000 yd³", aliases: [:"mi^3", :"cu mi", :"cubic mile", :"cubic miles"]
  end
end
