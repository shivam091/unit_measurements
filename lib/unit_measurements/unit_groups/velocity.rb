# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Velocity = UnitMeasurements.build do
  system :metric do
    primitive :"m/s"

    unit :"m/s", aliases: [:"m·s⁻¹", :"meter per second", :"meters per second", :"metre per second", :"metres per second"]
    unit :"m/min", value: "1/60 m/s", aliases: [:"m·min⁻¹", :"meter per minute", :"meters per minute", :"metre per minute", :"metres per minute"]
    unit :"m/h", value: "1/60 m/min", aliases: [:"m·h⁻¹", :"meter per hour", :"meters per hour", :"metre per hour", :"metres per hour"]
  end

  system :imperial do
    primitive :"in/s"

    unit :"in/s", value: "0.0254 m/s", aliases: [:"in·s⁻¹", :"inch per second", :"inches per second"]
    unit :"in/min", value: "1/60 in/s", aliases: [:"in·min⁻¹", :"inch per minute", :"inches per minute"]
    unit :"in/h", value: "1/60 in/min", aliases: [:"in·h⁻¹", :"inch per hour", :"inches per hour"]
  end

  system :foot_pound_second do
    primitive :"ft/s"

    unit :"ft/s", value: "12 in/s", aliases: [:"ft·s⁻¹", :"foot per second", :"feet per second"]
    unit :"ft/min", value: "1/60 ft/s", aliases: [:"ft·min⁻¹", :"foot per minute", :"feet per minute"]
    unit :"ft/h", value: "1/60 ft/min", aliases: [:"ft·h⁻¹", :"foot per hour", :"feet per hour"]
  end

  system :meteorology_aviation_maritime do
    unit :Kn, value: "0.514773 m/s", aliases: [:kt, :knot, :knots]
  end
end