# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::MassFlowRate = UnitMeasurements.build do
  primitive "kg/s"

  system :metric do
    unit "kg/s", aliases: ["kilogramme per second", "kilogrammes per second", "kilogram per second", "kilograms per second"]
    unit "kg/min", value: "1/60 kg/s", aliases: ["kilogramme per minute", "kilogrammes per minute", "kilogram per minute", "kilograms per minute"]
    unit "kg/h", value: "1/60 kg/min", aliases: ["kilogramme per hour", "kilogrammes per hour", "kilogram per hour", "kilograms per hour"]

    unit "g/s", value: "1/1000 kg/s", aliases: ["gramme per second", "grammes per second", "gram per second", "grams per second"]
    unit "g/min", value: "1/60 g/s", aliases: ["gramme per minute", "grammes per minute", "gram per minute", "grams per minute"]
    unit "g/h", value: "1/60 g/min", aliases: ["gramme per hour", "grammes per hour", "gram per hour", "grams per hour"]

    unit "t/s", value: "1000 kg/s", aliases: ["tonne per second", "tonnes per second", "metric tonne per second", "metric tonnes per second"]
    unit "t/min", value: "1/60 t/s", aliases: ["tonne per minute", "tonnes per minute", "metric tonne per minute", "metric tonnes per minute"]
    unit "t/h", value: "1/60 t/min", aliases: ["tonne per hour", "tonnes per hour", "metric tonne per hour", "metric tonnes per hour"]
  end

  system :us_customary do
    unit "lb/s", value: "0.45359237 kg/s", aliases: ["pound per second", "pounds per second"]
    unit "lb/min", value: "1/60 lb/s", aliases: ["pound per minute", "pounds per minute"]
    unit "lb/h", value: "1/60 lb/min", aliases: ["pound per hour", "pounds per hour"]

    unit "tn/s", value: "2000 lb/s", aliases: ["ton per second", "tons per second", "short ton per second", "short tons per second"]
    unit "tn/min", value: "1/60 tn/s", aliases: ["ton per minute", "tons per minute", "short ton per minute", "short tons per minute"]
    unit "tn/h", value: "1/60 tn/min", aliases: ["ton per hour", "tons per hour", "short ton per hour", "short tons per hour"]

    unit "slug/s", value: "14.5939 kg/s", aliases: ["slug per second", "slugs per second"]
    unit "slug/min", value: "1/60 slug/s", aliases: ["slug per minute", "slugs per minute"]
    unit "slug/h", value: "1/60 slug/min", aliases: ["slug per hour", "slugs per hour"]
  end

  system :imperial do
    unit "oz/s", value: "1/16 lb/s", aliases: ["ounce per second", "ounces per second"]
    unit "oz/min", value: "1/60 oz/s", aliases: ["ounce per minute", "ounces per minute"]
    unit "oz/h", value: "1/60 oz/min", aliases: ["ounce per hour", "ounces per hour"]

    unit "gr/s", value: "1/7000 lb/s", aliases: ["grain per second", "grains per second"]
    unit "gr/min", value: "1/60 gr/s", aliases: ["grain per minute", "grains per minute"]
    unit "gr/h", value: "1/60 gr/min", aliases: ["grain per hour", "grains per hour"]

    unit "LT/s", value: "2240 lb/s", aliases: ["long ton per second", "long tons per second"]
    unit "LT/min", value: "1/60 LT/s", aliases: ["long ton per minute", "long tons per minute"]
    unit "LT/h", value: "1/60 LT/min", aliases: ["long ton per hour", "long tons per hour"]
  end
end
