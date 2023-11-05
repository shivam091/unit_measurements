# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Formatter+ mixin module contains methods for formatting
  # measurements into human-readable strings. It provides the ability to customize
  # the output format based on user-defined preferences.
  #
  # This module is included in the +Measurement+ class to allow customization of
  # the output of the measurements.
  #
  # @see Measurement
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.1.0
  module Formatter
    # The default format used for formatting measurements. It is a format string
    # containing placeholders for +quantity+ and +unit+.
    DEFAULT_FORMAT = "%.2<quantity>f %<unit>s".freeze

    # @deprecated This method has been deprecated in favour of {#to_fs}.
    #
    # This method is no longer recommended for use. Please use {#to_fs}
    # instead.
    def format(format = nil)
      warn "DEPRECATION WARNING: The `format` method is deprecated and will be removed in upcoming release. Please use `to_fs` instead."
      to_fs(format)
    end

    # Formats measurement to certain formatted string specified by +format+.
    # If +format+ is not specified, it uses {DEFAULT_FORMAT} for formatting the
    # measurement.
    #
    # The {#to_fs} method allows for customization of the output format of a
    # measurement. It uses format placeholders for +quantity+ and +unit+.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "m").to("in").to_fs
    #   => "39.37 in"
    #
    #   UnitMeasurements::Length.new(1, "m").to("in").to_fs("%.4<quantity>f %<unit>s")
    #   => "39.3701 in"
    #
    # @param [String, optional] format
    #   The custom format string for formatting the measurement. If not provided,
    #   +DEFAULT_FORMAT+ is used.
    #
    # @return [String] A formatted string representing the measurement.
    #
    # @see DEFAULT_FORMAT
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.10.0
    def to_fs(format = nil)
      kwargs = {quantity: quantity, unit: unit.to_s}
      (format || DEFAULT_FORMAT) % kwargs
    end
  end
end
