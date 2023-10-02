# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Inductance = UnitMeasurements.build do
  primitive :H

  system :metric do
    si_unit :H, aliases: [:henry, :henries]

    unit :"Wb/A", value: "1 H", aliases: [:"Wb·A⁻¹", :"weber per ampere", :"webers per ampere"]
  end

  system :centimetre_gram_second do
    unit :abH, value: "1e-9 H", aliases: [:abhenry, :abhenries]
    unit :statH, value: "8.98755178736818e+11 H", aliases: [:stathenry, :stathenries]
  end
end
