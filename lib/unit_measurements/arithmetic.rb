# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Arithmetic+ mixin module provides methods for
  # performing arithmetic operations (addition, subtraction, multiplication,
  # division, etc) on measurements of the same unit group. In case the
  # measurements represents different units, the left hand side takes precedence
  # while performing the arithmetic operation on them.
  #
  # This module is included in the +Measurement+ class to allow arithmetic
  # operations on the measurements.
  #
  # @see Measurement
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.4.0
  module Arithmetic
    # Adds the quantity of the other measurement or a numeric value to the
    # quantity of the current measurement.
    #
    # @param [Numeric|Measurement] other
    #   The value to be added. It can be a numeric value or another measurement.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "km") + UnitMeasurements::Length.new(1, "m")
    #   => 1.001 km
    #
    #   UnitMeasurements::Length.new(1, "km") + 4.5
    #   => 5.5 km
    #
    # @return [Measurement] A new +Measurement+ instance with the combined quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.4.0
    def +(other)
      arithmetic_operation(other, :+)
    end

    # Subtracts the quantity of the other measurement or a numeric value from the
    # quantity of the current measurement.
    #
    # @param [Numeric|Measurement] other
    #   The value to be subtracted. It can be a numeric value or another measurement.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "km") - UnitMeasurements::Length.new(2, "in")
    #   => 0.9999492 km
    #
    #   UnitMeasurements::Length.new(2, "km") - 1e+2
    #   => -98.0 km
    #
    # @return [Measurement] A new +Measurement+ instance with the subtracted quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.4.0
    def -(other)
      arithmetic_operation(other, :-)
    end

    # Multiplies the quantity of the current measurement by the quantity of the
    # other measurement or a numeric value.
    #
    # @param [Numeric|Measurement] other
    #   The value to be multiplied. It can be a numeric value or another measurement.
    #
    # @example
    #   UnitMeasurements::Length.new(2, "km") * UnitMeasurements::Length.new(3, "in")
    #   => 0.0001524 km
    #
    #   UnitMeasurements::Length.new(2, "km") * 2+2i
    #   => 4+2i km
    #
    # @return [Measurement] A new +Measurement+ instance with the multiplied quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.4.0
    def *(other)
      arithmetic_operation(other, :*)
    end
    alias_method :scale, :*

    # Divides the quantity of the current measurement by the quantity of the other
    # measurement or a numeric value.
    #
    # @param [Numeric|Measurement] other
    #   The value to be divided. It can be a numeric value or another measurement.
    #
    # @example
    #   UnitMeasurements::Length.new(4, "km") / UnitMeasurements::Length.new(2, "km")
    #   => 2 km
    #
    #   UnitMeasurements::Length.new(2, "km") / 2
    #   => 1 km
    #
    # @return [Measurement] A new +Measurement+ instance with the divided quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.4.0
    def /(other)
      arithmetic_operation(other, :/)
    end

    # Raises the quantity of the current measurement to the power of the quantity of
    # the other measurement or numeric value.
    #
    # When +other+ is an instance of +Measurement+, the quantity to raise
    # is calculated by converting the +other+ measurement to the unit of the +current+
    # measurement, and then the quantity of the +current+ measurement is raised to
    # the converted quantity.
    #
    # @param [Numeric|Measurement] other
    #   The value to be raised. It can be a numeric value or another measurement.
    #
    # @example
    #   UnitMeasurements::Length.new(2, "km") ** UnitMeasurements::Length.new(3, "m")
    #   => 1.00208160507963279 km
    #
    #   UnitMeasurements::Length.new(2, "km") ** 3
    #   => 8 km
    #
    #   UnitMeasurements::Length.new(8, "km") ** 1/3r
    #   => 2 km
    #
    # @return [Measurement] A new +Measurement+ instance with the raised quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.1.0
    def **(other)
      arithmetic_operation(other, :**)
    end

    # Negates the quantity of the measurement.
    #
    # @example
    #   -UnitMeasurements::Length.new(2, "km")
    #   => -2 km
    #
    #   -UnitMeasurements::Length.new(-2, "km")
    #   => 2 km
    #
    # @return [Measurement] A new +Measurement+ instance with the negated quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.1.0
    def -@
      self.class.new(-self.quantity, self.unit)
    end

    # Checks whether the quantity of the measurement is nonzero.
    #
    # @example
    #   UnitMeasurements::Length.new(2, "km").nonzero?
    #   => true
    #
    #   UnitMeasurements::Length.new(0, "km").nonzero?
    #   => false
    #
    # @return [TrueClass|FalseClass]
    #   +true+ if the quantity is nonzero otherwise it returns +false+.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.1.0
    def nonzero?
      quantity.nonzero? ? true : false
    end

    private

    # @private
    # Coerces a numeric value or another measurement for arithmetic operations.
    #
    # @param [Numeric|Measurement] other
    #   The value to be coerced. It can be a numeric value or another measurement.
    #
    # @return [Array<Measurement>] An array containing the coerced values.
    #
    # @raise [TypeError]
    #   If the coercion is not possible due to incompatible types.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.4.0
    def coerce(other)
      case other
      when Numeric    then [self.class.new(other, self.unit), self]
      when self.class then [other, self]
      else                 raise TypeError, "Cannot coerce #{other.class} to #{self.class}"
      end
    end

    # @private
    # Performs an arithmetic operation (addition, subtraction, multiplication,
    # or division) on the current measurement and another numeric value.
    #
    # @param [Numeric|Measurement] other
    #   The value to be used in the arithmetic operation. It can be a numeric value
    #   or another measurement.
    # @param [Symbol] operator The operator to be used for the operation.
    #
    # @return [Measurement]
    #   A new +Measurement+ instance with the result of the arithmetic operation.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.4.0
    def arithmetic_operation(other, operator)
      other, _ = coerce(other)

      self.class.new(self.quantity.public_send(operator, other.convert_to(self.unit).quantity), self.unit)
    end
  end
end
