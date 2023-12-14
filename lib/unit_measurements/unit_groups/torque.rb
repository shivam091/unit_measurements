# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Torque = UnitMeasurements.build do
  primitive "N·m"

  system :metric do
    si_unit "N·m", aliases: ["N*m", "newton meter", "newton metre"]

    unit "N·cm", value: "0.01 N·m", aliases: ["N*cm", "newton centimeter", "newton centimetre"]
    unit "N·mm", value: "0.001 N·m", aliases: ["N*mm", "newton millimeter", "newton millimetre"]

    unit "gf·m", value: "9.80665e-3 N·m", aliases: ["gf*m", "gram-force meter", "gramme-force metre"]
    unit "gf·cm", value: "9.80665e-5 N·m", aliases: ["gf*cm", "gram-force centimeter", "gramme-force centimetre"]
    unit "gf·mm", value: "9.80665e-6 N·m", aliases: ["gf*mm", "gram-force millimeter", "gramme-force millimetre"]

    unit "kgf·m", value: "9.80665 N·m", aliases: ["kgf*m", "Kilogram-force meter", "kilogramme-force metre"]
    unit "kgf·cm", value: "0.0980665 N·m", aliases: ["kgf*cm", "Kilogram-force centimeter", "kilogramme-force centimetre"]
    unit "kgf·mm", value: "0.00980665 N·m", aliases: ["kgf*mm", "Kilogram-force millimeter", "kilogramme-force millimetre"]

    unit "dyn·m", value: "1e-5 N·m", aliases: ["dyn*m", "dyne meter", "dyne metre"]
    unit "dyn·cm", value: "1e-7 N·m", aliases: ["dyn*cm", "dyne centimeter", "dyne centimetre"]
    unit "dyn·mm", value: "1e-8 N·m", aliases: ["dyn*mm", "dyne millimeter", "dyne millimetre"]
  end

  system :foot_pound_second do
    unit "pdl⋅ft", value: "0.0421401100938048 N·m", aliases: ["pdl*ft", "poundal foot", "foot-poundal"]
    unit "ozf·in", value: "0.00706155 N·m", aliases: ["oz⋅in", "ozf*in", "oz*in", "ounce-force inch", "ounce-inch"]
    unit "ozf·ft", value: "12 ozf·in", aliases: ["oz⋅ft", "ozf*ft", "oz*ft", "ounce-force foot", "ounce-foot"]
  end

  system :imperial do
    unit "lbf⋅in", value: "0.1129848290276167 N·m", aliases: ["lb⋅in", "lbf*in", "lb*in", "pound-force inch", "pound-inch"]
  end

  system :english_engineering do
    unit "lbf⋅ft", value: "12 lbf⋅in", aliases: ["lb⋅ft", "lbf*ft", "lb*ft", "pound-force foot", "pound-foot"]
  end
end
