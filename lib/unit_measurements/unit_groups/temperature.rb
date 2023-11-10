# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Temperature = UnitMeasurements.build do
  primitive "K"

  system :metric do
    unit "K", value: {
      "°C" => -> (value) { value - 273.15 },
      "°F" => -> (value) { (value - 273.15) * 9 / 5 + 32 },
      "°R" => -> (value) { value * 9 / 5 },
    }, aliases: ["kelvin", "kelvins"]

    unit "°C", value: {
      "K"  => -> (value) { value + 273.15 },
      "°F" => -> (value) { value * 9 / 5 + 32 },
      "°R" => -> (value) { (value + 273.15) * 9 / 5 }
    }, aliases: ["celsius", "centigrade"]
  end

  system :english_engineering do
    unit "°F", value: {
      "K"  => -> (value) { (value + 459.67) * 5 / 9 },
      "°C" => -> (value) { (value - 32) * 5 / 9 },
      "°R" => -> (value) { value + 459.67 }
    }, aliases: ["fahrenheit"]

    unit "°R", value: {
      "K"  => -> (value)  { value * 5 / 9 },
      "°C" => -> (value) { (value - 491.67) * 5 / 9 },
      "°F" => -> (value) { value - 459.67 },
    }, aliases: ["R", "°Ra", "Ra", "rankine"]
  end
end
