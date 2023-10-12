# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Arithmetic+ module provides methods for performing
  # arithmetic operations (addition, subtraction, multiplication, and division, etc)
  # on measurement objects of the same unit group.
  module Arithmetic
    # Adds the quantity of the other measurement or a numeric value to the quantity of the current measurement.
    #
    # @param [Numeric or Measurement] other The value to be added. It can be a numeric value or another measurement.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "km") + UnitMeasurements::Length.new(1, "m")
    #   => 1.001 km
    #
    # @return [Measurement] A new +Measurement+ instance with the combined quantity.
    def +(other)
      arithmetic_operation(other, :+)
    end

    # Subtracts the quantity of the other measurement or a numeric value from the quantity of the current measurement.
    #
    # @param [Numeric or Measurement] other The value to be subtracted. It can be a numeric value or another measurement.
    #
    # @example
    #   UnitMeasurements::Length.new(2, "km") - 1
    #   => 1 km
    #
    # @return [Measurement] A new +Measurement+ instance with the subtracted quantity.
    def -(other)
      arithmetic_operation(other, :-)
    end

    # Multiplies the quantity of the current measurement by the quantity of the other measurement or a numeric value.
    #
    # @param [Numeric or Measurement] other The value to be multiplied. It can be a numeric value or another measurement.
    #
    # @example
    #   UnitMeasurements::Length.new(2, "km") * 2
    #   => 4 km
    #
    # @return [Measurement] A new +Measurement+ instance with the multiplied quantity.
    def *(other)
      arithmetic_operation(other, :*)
    end

    # Divides the quantity of the current measurement by the quantity of the other measurement or a numeric value.
    #
    # @param [Numeric or Measurement] other The value to be divided by. It can be a numeric value or another measurement.
    #
    # @example
    #   UnitMeasurements::Length.new(4, "km") / UnitMeasurements::Weight.new(2, "km")
    #   => 2 km
    #
    # @return [Measurement] A new +Measurement+ instance with the divided quantity.
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
