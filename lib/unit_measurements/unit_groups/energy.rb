# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Energy = UnitMeasurements.build do
  primitive "J"

  system :metric do
    si_unit "J", aliases: ["joule", "joules"]
    si_unit "cal", value: "4.1868 J", aliases: ["calorie", "calories"]

    unit "eV", value: "1.602176634e-19 J", aliases: ["electronvolt", "electron volt", "electron-volt"]
  end

  system :centimetre_gram_second do
    unit "erg", value: "1e-7 J", aliases: ["ergs"]
  end

  system :us_customary do
    si_unit "Btu", value: "1055.05585262 J", aliases: ["btu", "btus", "british thermal unit", "british thermal units"]

    unit "thm", value: "100 kBtu", aliases: ["therm", "therms"]
    unit "quad", value: "1.05505585262e+18 J", aliases: ["quads"]
  end

  unit "foe", value: "1e+51 erg", aliases: ["bethe"]
end
