# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  module Math
    # Rounds quantity of the measurement. If `ndigits` is not specified,
    # quantity is rounded to `Integer`.
    #
    # @example
    #   UnitMeasurements::Weight.new(1, :g).convert_to(:st).round(4)
    #   => 0.0002 st
    #
    # @param [Integer] ndigits
    #
    # @return [Measurement]
    def round(ndigits = 0)
      self.class.new(quantity.round(ndigits), unit)
    end

    # Returns absolute value of the measurement quantity.
    #
    # @example
    #   UnitMeasurements::Length.new(-17.625, :m).abs
    #   => 17.625 m
    #
    # @return [Measurement]
    def abs
      self.class.new(quantity.abs, unit)
    end

    # Rounds quantity of the measurement to next lower integer.
    #
    # @example
    #   UnitMeasurements::Length.new(17.625, :m).floor
    #   => 17 m
    #
    # @return [Measurement]
    def floor(*args)
      self.class.new(quantity.floor(*args), unit)
    end

    # Rounds quantity of the measurement to next higher integer.
    #
    # @example
    #   UnitMeasurements::Length.new(17.625, :m).ceil
    #   => 18 m
    #
    # @return [Measurement]
    def ceil(*args)
      self.class.new(quantity.ceil(*args), unit)
    end
  end
end
