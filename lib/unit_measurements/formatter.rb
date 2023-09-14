# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  module Formatter
    # The default format for formatting measurements.
    DEFAULT_FORMAT = "%.2<quantity>f %<unit>s".freeze

    # Formats measurement to certain formatted string specified by +format+.
    # If +format+ is not specified, it uses +DEFAULT_FORMAT+ for
    # formatting the measurement
    #
    # @example
    #   UnitMeasurements::Weight.parse("2 kg").to(:st).format
    #   => "0.31 st"
    #   UnitMeasurements::Weight.parse("2 kg").to(:st).format("%.4<quantity>f %<unit>s")
    #   => "0.3149 st"
    #
    # @param [String] format
    #
    # @return [String]
    def format(format = nil)
      kwargs = {quantity: quantity, unit: unit.to_s}
      (format || DEFAULT_FORMAT) % kwargs
    end
  end
end
