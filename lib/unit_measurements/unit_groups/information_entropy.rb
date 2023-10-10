# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::InformationEntropy = UnitMeasurements.build do
  primitive "nat"

  si_unit "b", value: "1 Sh", aliases: ["bit", "bits"]
  si_unit "B", value: [2.pow(3), "b"], aliases: ["byte", "bytes"]

  unit "Sh", value: [Math.log(2), "nat"], aliases: ["shannon", "shannons"]
  unit "nat", aliases: ["nit", "nepit", "natural unit of information"]
  unit "nybl", value: [2.pow(2), "b"], aliases: ["nibble", "nibbles", "nybble", "nyble"]
  unit "Hart", value: [Math.log(10), "nat"], aliases: ["hartley", "ban", "dit"]
end
