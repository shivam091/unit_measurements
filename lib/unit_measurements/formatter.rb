# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Formatter+ module contains methods for formatting
  # measurements into human-readable strings. It provides the ability to customize
  # the output format based on user-defined preferences.
  module Formatter
    # The default format used for formatting measurements. It is a format string
    # containing placeholders for +quantity+ and +unit+.
    DEFAULT_FORMAT = "%.2<quantity>f %<unit>s".freeze

    # Formats measurement to certain formatted string specified by +format+.
    # If +format+ is not specified, it uses +DEFAULT_FORMAT+ for formatting the
    # measurement.
    #
    # *Notes:*
    #
    # * The format method allows for customization of the output format of a measurement. It uses format placeholders for +quantity+ and +unit+.
    #
    # * If no custom format is provided, it will use the +DEFAULT_FORMAT+.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "m").to("in").format
    #   => "39.37 in"
    #
    #   UnitMeasurements::Length.new(1, "m").to("in").format("%.4<quantity>f %<unit>s")
    #   => "39.3701 in"
    #
    # @param [String, optional] format The custom format string for formatting the measurement. If not provided, +DEFAULT_FORMAT+ is used.
    #
    # @return [String] A formatted string representing the measurement.
    def format(format = nil)
      kwargs = {quantity: quantity, unit: unit.to_s}

      (format || DEFAULT_FORMAT) % kwargs
    end
  end
end
