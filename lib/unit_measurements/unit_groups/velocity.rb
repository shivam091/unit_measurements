# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Velocity = UnitMeasurements.build do
  primitive "m/s"

  system :metric do
    unit "m/s", aliases: ["meter per second", "meters per second", "metre per second", "metres per second"]
    unit "m/min", value: "1/60 m/s", aliases: ["meter per minute", "meters per minute", "metre per minute", "metres per minute"]
    unit "m/h", value: "1/60 m/min", aliases: ["meter per hour", "meters per hour", "metre per hour", "metres per hour"]
  end

  system :imperial do
    unit "in/s", value: "0.0254 m/s", aliases: ["ips", "inch per second", "inches per second"]
    unit "in/min", value: "1/60 in/s", aliases: ["ipm", "inch per minute", "inches per minute"]
    unit "in/h", value: "1/60 in/min", aliases: ["iph", "inch per hour", "inches per hour"]

    unit "mi/s", value: "1609.344 m/s", aliases: ["mps", "mile per second", "miles per second"]
    unit "mi/min", value: "1/60 mi/s", aliases: ["mpm", "mile per minute", "miles per minute"]
    unit "mi/h", value: "1/60 mi/min", aliases: ["mph", "mile per hour", "miles per hour"]
  end

  system :foot_pound_second do
    unit "ft/s", value: "12 in/s", aliases: ["fps", "foot per second", "feet per second"]
    unit "ft/min", value: "1/60 ft/s", aliases: ["fpm", "foot per minute", "feet per minute"]
    unit "ft/h", value: "1/60 ft/min", aliases: ["fph", "foot per hour", "feet per hour"]
  end

  system :furlong_firkin_fortnight do
    unit "fur/ftn", value: "1.663e-4 m/s", aliases: ["furlong per fortnight", "furlongs per fortnight"]
  end

  system :meteorology_aviation_maritime do
    unit "Kn", value: "0.514773 m/s", aliases: ["kt", "knot", "knots"]
  end
end
