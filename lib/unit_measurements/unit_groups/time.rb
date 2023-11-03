# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Time = UnitMeasurements.build do
  primitive "s"

  system :metric do
    si_unit "s", aliases: ["sec", "second", "seconds"]

    unit "h", value: "60 min", aliases: ["hr", "hour", "hours"]
    unit "d", value: "24 h", aliases: ["day", "days"]
    unit "min", value: "60 s", aliases: ["minute", "minutes"]
  end

  unit "wk", value: "7 d", aliases: ["week", "weeks"]
  unit "mo", value: "30.4167 d", aliases: ["month", "months"]
  unit "yr", value: "365 d", aliases: ["y", "year", "years"]

  unit "ftn", value: "2 wk", aliases: ["4tnite", "fortnight", "fortnights"]
  unit "qtr", value: "3 mo", aliases: ["quarter", "quarters"]
  unit "dec", value: "10 y", aliases: ["decade", "decades"]

  unit "cent", value: "10 dec", aliases: ["century", "centuries"]
end
