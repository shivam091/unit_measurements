# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Density = UnitMeasurements.build do
  primitive "kg/m³"

  system :metric do
    unit "g/m³", aliases: ["g/m^3", "gram per cubic meter", "grams per cubic meter", "gramme per cubic metre", "grammes per cubic metre"]
    unit "g/l", value: "1 kg/m³", aliases: ["gram per liter", "grams per liter", "gramme per litre", "grammes per litre"]
    unit "g/ml", value: "1000 g/l", aliases: ["gram per milliliter", "grams per milliliter", "gramme per millilitre", "grammes per millilitre"]

    unit "kg/l", value: "1e+6 g/m³", aliases: ["kilogram per liter", "kilograms per liter", "kilogramme per litre", "kilogrammes per litre"]
    unit "kg/m³", value: "1000 g/m³", aliases: ["kg/m^3", "kilogram per cubic meter", "kilograms per cubic meter", "kilogramme per cubic metre", "kilogrammes per cubic metre"]
  end

  system :imperial do
    unit "oz/ft³", value: "1.001153961 kg/m³", aliases: ["oz/ft^3", "ounce per cubic foot", "ounces per cubic foot"]
    unit "oz/in³", value: "1.729994044e+3 kg/m³", aliases: ["oz/in^3", "ounce per cubic inch", "ounces per cubic inch"]
    unit "oz/gal", value: "6.236023291 kg/m³", aliases: ["ounce per gallon", "ounces per gallon"]

    unit "lb/ft³", value: "16.01846337 kg/m³", aliases: ["lb/ft^3", "pound per cubic foot", "pounds per cubic foot"]
    unit "lb/in³", value: "2.767990471e+4 kg/m³", aliases: ["lb/in^3", "pound per cubic inch", "pounds per cubic inch"]
    unit "lb/gal", value: "99.77637266 kg/m³", aliases: ["pound per gallon", "pounds per gallon"]

    unit "slug/ft³", value: "515.3788184 kg/m³", aliases: ["slug/ft^3", "slug per cubic foot", "slugs per cubic foot"]
    unit "slug/in³", value: "890574.582782 kg/m³", aliases: ["slug/in^3", "slug per cubic inch", "slugs per cubic inch"]
  end

  system :planck_units do
    unit "ρₚ", value: "5.1550e+96 kg/m³", aliases: ["planck density", "quantum density"]
  end
end
