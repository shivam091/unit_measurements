# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::ElectricConductance = UnitMeasurements.build do
  primitive "S"

  system :metric do
    si_unit "S", aliases: ["℧", "Ω⁻¹", "siemens", "mho", "mhos"]

    unit "A/V", value: "1 S", aliases: ["A·V⁻¹", "amp./volt", "amps./volt", "ampere/volt", "amperes/volt", "ampere per volt", "amperes per volt"]
  end

  system :centimetre_gram_second do
    unit "abS", value: "1e+9 S", aliases: ["ab℧", "absiemens", "abmho", "abmhos"]
    unit "statS", value: "1.112347e-12 S", aliases: ["stat℧", "statsiemens", "statmho", "statmhos"]
  end
end
