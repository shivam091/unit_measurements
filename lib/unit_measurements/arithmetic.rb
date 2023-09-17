# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  module Arithmetic
    # Adds the other measurement quantity or number to the measurement.
    #
    # @param [Numeric or Measurement] other
    #
    # @example
    #   UnitMeasurements::Weight.new(1, :kg) + UnitMeasurements::Weight.new(1, :g)
    #   => 1.001 kg
    #
    # @return [Measurement]
    def +(other)
      arithmetic_operation(other, :+)
    end

    # Subtracts the other measurement quantity or number from the measurement.
    #
    # @param [Numeric or Measurement] other
    #
    # @example
    #   UnitMeasurements::Weight.new(2, :kg) - 1
    #   => 1 kg
    #
    # @return [Measurement]
    def -(other)
      arithmetic_operation(other, :-)
    end

    # Multiplies the measurement quantity by other measurement quantity or number.
    #
    # @param [Numeric or Measurement] other
    #
    # @example
    #   UnitMeasurements::Weight.new(2, :kg) * 2
    #   => 4 kg
    #
    # @return [Measurement]
    def *(other)
      arithmetic_operation(other, :*)
    end

    # Divides the measurement quantity by other measurement quantity or number.
    #
    # @param [Numeric or Measurement] other
    #
    # @example
    #   UnitMeasurements::Weight.new(4, :kg) / UnitMeasurements::Weight.new(2, :kg)
    #   => 2 kg
    #
    # @return [Measurement]
    def /(other)
      arithmetic_operation(other, :/)
    end

    private

    def coerce(other)
      case other
      when Numeric    then [self.class.new(other, self.unit), self]
      when self.class then [other, self]
      else                 raise TypeError, "Cannot coerce #{other.class} to #{self.class}"
      end
    end

    def arithmetic_operation(other, operator)
      other, _ = coerce(other)
      self.class.new(self.quantity.public_send(operator, other.convert_to(self.unit).quantity), self.unit)
    end
  end
end
