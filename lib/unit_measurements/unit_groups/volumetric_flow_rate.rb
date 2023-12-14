# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::VolumetricFlowRate = UnitMeasurements.build do
  primitive "m³/s"

  system :metric do
    unit "m³/s", aliases: ["m^3/s", "cubic metre per second", "cubic metres per second", "cubic meter per second", "cubic meters per second"]
    unit "m³/min", value: "1/60 m³/s", aliases: ["m^3/min", "cubic metre per minute", "cubic metres per minute", "cubic meter per minute", "cubic meters per minute"]
    unit "m³/h", value: "1/60 m³/min", aliases: ["m^3/h", "cubic metre per hour", "cubic metres per hour", "cubic meter per hour", "cubic meters per hour"]

    unit "l/s", value: "1/1000 m³/s", aliases: ["L/s", "litre per second", "litres per second", "liter per second", "liters per second"]
    unit "l/min", value: "1/60 l/s", aliases: ["L/min", "litre per minute", "litres per minute", "liter per minute", "liters per minute"]
    unit "l/h", value: "1/60 l/min", aliases: ["L/h", "litre per hour", "litres per hour", "liter per hour", "liters per hour"]
  end

  system :imperial do
    unit "ft³/s", value: "0.028316846592 m³/s", aliases: ["ft^3/s", "cubic foot per second", "cubic feet per second"]
    unit "ft³/min", value: "1/60 ft³/s", aliases: ["ft^3/min", "cubic foot per minute", "cubic feet per minute"]
    unit "ft³/h", value: "1/60 ft³/min", aliases: ["ft^3/h", "cubic foot per hour", "cubic feet per hour"]

    unit "in³/s", value: "1.6387064e-5 m³/s", aliases: ["in^3/s", "cubic inch per second", "cubic inches per second"]
    unit "in³/min", value: "1/60 in³/s", aliases: ["in^3/min", "cubic inch per minute", "cubic inches per minute"]
    unit "in³/h", value: "1/60 in³/min", aliases: ["in^3/h", "cubic inch per hour", "cubic inches per hour"]

    unit "yd³/s", value: "0.764554857984 m³/s", aliases: ["yd^3/s", "cubic yard per second", "cubic yards per second"]
    unit "yd³/min", value: "1/60 yd³/s", aliases: ["yd^3/min", "cubic yard per minute", "cubic yards per minute"]
    unit "yd³/h", value: "1/60 yd³/min", aliases: ["yd^3/h", "cubic yard per hour", "cubic yards per hour"]

    unit "gal/s", value: "0.00454609 m³/s", aliases: ["gallon per second", "gallons per second"]
    unit "gal/min", value: "1/60 gal/s", aliases: ["gallon per minute", "gallons per minute"]
    unit "gal/h", value: "1/60 gal/min", aliases: ["gallon per hour", "gallons per hour"]
  end
end
