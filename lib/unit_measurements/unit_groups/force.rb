# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Force = UnitMeasurements.build do
  primitive :N

  system :metric do
    si_unit :N, aliases: [:newton, :newtons]

    unit :kgf, value: "9.80665 N", aliases: [:"kilogram-force", :"kilogramme-force"]
  end

  system :centimetre_gram_second do
    unit :dyn, value: "1e-5 N", aliases: [:dyne, :dynes]
  end

  system :metre_tonne_second do
    unit :tf, value: "8896.443230521 N", aliases: [:"tonne-force"]
  end

  system :english_engineering do
    unit :lbf, value: "4.4482216152605 N", aliases: [:"pound-force"]
  end

  system :foot_pound_second do
    unit :pdl, value: "0.138254954376 N", aliases: [:poundal, :poundals]
    unit :ozf, value: "0.27801385095378125 N", aliases: [:"ounce-force"]
  end
end
