# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Conductance = UnitMeasurements.build do
  system :metric do
    primitive :S

    si_unit :S, aliases: [:℧, :"Ω⁻¹", :siemens, :mho, :mhos]
    unit :"A/V", value: "1 S", aliases: [:"A·V⁻¹", :"amp./volt", :"amps./volt", :"ampere/volt", :"amperes/volt", :"ampere per volt", :"amperes per volt"]
  end

  system :centimetre_gram_second do
    primitive :statS

    unit :abS, value: "1e+9 S", aliases: [:ab℧, :absiemens, :abmho, :abmhos]
    unit :statS, value: "1.112347e-12 S", aliases: [:stat℧, :statsiemens, :statmho, :statmhos]
  end
end
