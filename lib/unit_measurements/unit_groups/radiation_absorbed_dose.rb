# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::RadiationAbsorbedDose = UnitMeasurements.build do
  primitive "Gy"

  system :metric do
    si_unit "Gy", aliases: ["gray", "grays"]
  end

  system :centimetre_gram_second do
    unit "rad", value: "0.01 Gy", aliases: ["radiation absorbed dose"]

    unit "erg/g", value: "1e-4 Gy", aliases: ["erg per gram", "erg per gramme", "ergs per gram", "ergs per gramme"]
  end
end
