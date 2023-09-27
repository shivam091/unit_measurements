# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Acceleration = UnitMeasurements.build do
  si_unit :"m/s²", aliases: [:"m/s^2", :"m·s⁻²", :"meter per second squared", :"meters per second squared", :"metre per second squared", :"metres per second squared"]

  unit :"in/s²", value: "0.0254 m/s²", aliases: [:"in/s^2", :"in·s⁻²", :"inch per second squared", :"inches per second squared"]
  unit :"ft/s²", value: "0.3048 m/s²", aliases: [:"ft/s^2", :"ft·s⁻²", :"foot per second squared", :"feet per second squared"]
  unit :"Kn/s", value: "0.5144444 m/s²", aliases: [:"knot per second", :"knots per second"]
end
