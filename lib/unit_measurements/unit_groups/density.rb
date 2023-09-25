# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Density = UnitMeasurements.build do
  base :"g/m³", aliases: [:"g/m^3", :"g·m⁻³", :"gram per cubic meter", :"grams per cubic meter", :"gramme per cubic metre", :"grammes per cubic metre"]

  unit :"g/l", value: "1 kg/m³", aliases: [:"g·l⁻¹", :"gram per liter", :"grams per liter", :"gramme per litre", :"grammes per litre"]
  unit :"g/ml", value: "1000 g/l", aliases: [:"g·ml⁻¹", :"gram per milliliter", :"grams per milliliter", :"gramme per millilitre", :"grammes per millilitre"]

  unit :"kg/m³", value: "1000 g/m³", aliases: [:"kg/m^3", :"kg·m⁻³", :"kilogram per cubic meter", :"kilograms per cubic meter", :"kilogramme per cubic metre", :"kilogrammes per cubic metre"]
  unit :"kg/l", value: "1e+6 g/m³", aliases: [:"kg·l⁻¹", :"kilogram per liter", :"kilograms per liter", :"kilogramme per litre", :"kilogrammes per litre"]
end
