# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Math+ mixin module provides methods for performing
  # mathematical functions on the measurement.
  #
  # This module is included in the +Measurement+ class to allow mathematical
  # functions on the measurement.
  #
  # @see Measurement
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.6.0
  module Math
    # Rounds quantity of the measurement. If +ndigits+ is not specified, quantity
    # is rounded to +Integer+.
    #
    # @example
    #   UnitMeasurements::Length.new(17.625, "m").round
    #   => 18 m
    #
    #   UnitMeasurements::Length.new(17.625, "m").round(2)
    #   => 17.63 m
    #
    # @param [Integer, optional] ndigits The number of digits to round to.
    #
    # @return [Measurement] A new +Measurement+ instance with the rounded quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.6.0
    def round(ndigits = 0)
      self.class.new(quantity.round(ndigits), unit)
    end

    # Returns absolute value of the measurement quantity.
    #
    # @example
    #   UnitMeasurements::Length.new(-17.625, "m").abs
    #   => 17.625 m
    #
    # @return [Measurement]
    #   A new +Measurement+ instance with the absolute value of the quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.6.0
    def abs
      self.class.new(quantity.abs, unit)
    end

    # Returns floored quantity of the measurement. If +ndigits+ is not specified,
    # quantity is rounded to next lower +Integer+.
    #
    # @example
    #   UnitMeasurements::Length.new(17.625, "m").floor
    #   => 17 m
    #
    #   UnitMeasurements::Length.new(17.625, "m").floor(2)
    #   => 17.62 m
    #
    # @param [Integer, optional] ndigits The number of digits to round to.
    #
    # @return [Measurement] A new +Measurement+ instance with the floored quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.6.0
    def floor(ndigits = 0)
      self.class.new(quantity.floor(ndigits), unit)
    end

    # Returns ceiled quantity of the measurement. If +ndigits+ is not specified,
    # quantity is rounded to next higher +Integer+.
    #
    # @example
    #   UnitMeasurements::Length.new(17.625, "m").ceil
    #   => 18 m
    #
    #   UnitMeasurements::Length.new(17.625, "m").ceil(2)
    #   => 17.63 m
    #
    # @param [Integer, optional] ndigits The number of digits to round to.
    #
    # @return [Measurement] A new +Measurement+ instance with the ceiled quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.6.0
    def ceil(ndigits = 0)
      self.class.new(quantity.ceil(ndigits), unit)
    end
  end
end
