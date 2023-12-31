# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::AmountOfSubstance = UnitMeasurements.build do
  primitive "mol"

  system :metric do
    si_unit "mol", aliases: ["mole", "moles"]
  end

  unit "NA", value: "1.6605389210322e-24 mol", aliases: ["avogadro constant"]
end
