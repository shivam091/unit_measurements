# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Radioactivity = UnitMeasurements.build do
  primitive "Bq"

  system :metric do
    si_unit "Bq", aliases: ["becquerel", "becquerels"]
  end

  unit "Ci", value: "3.7e+10 Bq", aliases: ["curie", "curies"]
  unit "Rd", value: "1e+6 Bq", aliases: ["rutherford", "rutherfords"]
end
