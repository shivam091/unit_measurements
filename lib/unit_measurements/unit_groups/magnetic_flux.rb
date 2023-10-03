# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::MagneticFlux = UnitMeasurements.build do
  primitive "Wb"

  system :metric do
    si_unit "Wb", aliases: ["weber", "webers"]

    unit "T·m²", value: "1 Wb", aliases: ["T*m^2", "tesla-square meter", "tesla-square metre"]
  end

  system :centimetre_gram_second do
    unit "Mx", value: "1e-8 Wb", aliases: ["maxwell", "maxwells"]
    unit "G·cm²", value: "1e-8 Wb", aliases: ["G*cm^2", "gauss-square centimeter", "gauss-square centimetre"]
  end
end
