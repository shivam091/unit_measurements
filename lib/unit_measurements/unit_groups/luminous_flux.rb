# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::LuminousFlux = UnitMeasurements.build do
  primitive "lm"

  system :metric do
    si_unit "lm", aliases: ["lumen", "lumens"]
  end
end
