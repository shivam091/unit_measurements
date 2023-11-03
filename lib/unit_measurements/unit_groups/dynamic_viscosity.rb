# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::DynamicViscosity = UnitMeasurements.build do
  primitive "Pa⋅s"

  system :metric do
    si_unit "Pa⋅s", aliases: ["Pa*s", "pascal second"]
  end

  system :centimetre_gram_second do
    unit "P", value: "1 dPa⋅s", aliases: ["dyne·s/cm²", "dyne*s/cm^2", "poise"]
    unit "Pl", value: "10 P", aliases: ["poiseuille"]
  end

  system :foot_pound_second do
    unit "lb/(ft⋅s)", value: "1.488164 Pa⋅s", aliases: ["lb/(ft*s)", "pound per foot second", "pounds per foot second"]
    unit "lb/(ft⋅h)", value: "0.0004133789 Pa⋅s", aliases: ["lb/(ft*h)", "pound per foot hour", "pounds per foot hour"]

    unit "(lbf⋅s)/ft²", value: "47.88026 Pa⋅s", aliases: ["(lb⋅s)/ft²", "(lbf*s)/ft^2", "(lb*s)/ft^2", "pound-force second per square foot"]
    unit "(lbf⋅s)/in²", value: "6894.757 Pa⋅s", aliases: ["(lb⋅s)/in²", "(lbf*s)/in^2", "(lb*s)/in^2", "pound-force second per square inch"]
  end
end
