# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Math+ mixin module provides methods for performing
  # mathematical functions on the quantity of a measurement.
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

    # Returns a new +Measurement+ instance with the square root of the quantity.
    #
    # @example
    #   UnitMeasurements::Length.new(9, "m").sqrt
    #   #=> 3.0 m
    #
    # @return [Measurement] A new +Measurement+ instance with the square root of quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.6.0
    def sqrt
      self.class.new((quantity ** Rational(1, 2)), unit)
    end

    # Returns a new +Measurement+ instance with the cube root of the quantity.
    #
    # @example
    #   UnitMeasurements::Length.new(27, "m").cbrt
    #   #=> 3.0 m
    #
    # @return [Measurement]
    #   A new +Measurement+ instance with the cube root of quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.6.0
    def cbrt
      self.class.new((quantity ** Rational(1, 3)), unit)
    end

    # Returns a new +Measurement+ instance with the logarithm of the quantity to
    # the given base.
    #
    # @example
    #   UnitMeasurements::Length.new(1000, "m").log
    #   #=> 6.90775527898214 m
    #
    # @param [Integer|BigDecimal|Float] base The base of the logarithm.
    #
    # @return [Measurement]
    #   A new +Measurement+ instance with the logarithm of the quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.6.0
    def log(base = ::Math::E)
      self.class.new(::Math.log(quantity, base), unit)
    end

    # Returns a new +Measurement+ instance with the base 10 logarithm of the
    # quantity.
    #
    # @example
    #   UnitMeasurements::Length.new(1000, "m").log10
    #   #=> 3.0 m
    #
    # @return [Measurement]
    #   A new +Measurement+ instance with the base 10 logarithm of the quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.6.0
    def log10
      self.class.new(::Math.log10(quantity), unit)
    end

    # Returns a new +Measurement+ instance with the base 2 logarithm of the
    # quantity.
    #
    # @example
    #   UnitMeasurements::Length.new(1000, "m").log2
    #   #=> 9.96578428466209 m
    #
    # @return [Measurement]
    #   A new +Measurement+ instance with the base 2 logarithm of the quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.6.0
    def log2
      self.class.new(::Math.log2(quantity), unit)
    end

    # Returns a new +Measurement+ instance with the sine of the quantity.
    #
    # @return [Measurement] A new +Measurement+ instance with the sine.
    # @example
    #   measurement = UnitMeasurements::Angle.new(90, "deg")
    #   result = measurement.sin
    #   #=> 1.0
    def sin
      self.class.new(Math.sin(quantity), unit)
    end

    # Returns a new +Measurement+ instance with the arcsine of the quantity.
    #
    # @return [Measurement] A new +Measurement+ instance with the arcsine.
    # @example
    #   measurement = UnitMeasurements::Angle.new(1, "")
    #   result = measurement.asin
    #   #=> 90.0 deg
    def asin
      self.class.new(Math.asin(quantity), unit)
    end

    # Returns a new +Measurement+ instance with the cosine of the quantity.
    #
    # @return [Measurement] A new +Measurement+ instance with the cosine.
    # @example
    #   measurement = UnitMeasurements::Angle.new(60, "deg")
    #   result = measurement.cos
    #   #=> 0.5
    def cos
      self.class.new(Math.cos(quantity), unit)
    end

    # Returns a new +Measurement+ instance with the arccosine of the quantity.
    #
    # @return [Measurement] A new +Measurement+ instance with the arccosine.
    # @example
    #   measurement = UnitMeasurements::Angle.new(0.5, "")
    #   result = measurement.acos
    #   #=> 60.0 deg
    def acos
      self.class.new(Math.acos(quantity), unit)
    end

    # Returns a new +Measurement+ instance with the hyperbolic sine of the quantity.
    #
    # @return [Measurement] A new +Measurement+ instance with the hyperbolic sine.
    # @example
    #   measurement = UnitMeasurements::Length.new(1, "m")
    #   result = measurement.sinh
    #   #=> 1.1752011936438 m
    def sinh
      self.class.new(Math.sinh(quantity), unit)
    end

    # Returns a new +Measurement+ instance with the hyperbolic cosine of the quantity.
    #
    # @return [Measurement] A new +Measurement+ instance with the hyperbolic cosine.
    # @example
    #   measurement = UnitMeasurements::Length.new(1, "m")
    #   result = measurement.cosh
    #   #=> 1.5430806348152 m
    def cosh
      self.class.new(Math.cosh(quantity), unit)
    end

    # Returns a new +Measurement+ instance with the tangent of the quantity.
    #
    # @return [Measurement] A new +Measurement+ instance with the tangent.
    # @example
    #   measurement = UnitMeasurements::Angle.new(45, "deg")
    #   result = measurement.tan
    #   #=> 1.0
    def tan
      self.class.new(Math.tan(quantity), unit)
    end

    # Returns a new +Measurement+ instance with the hyperbolic tangent of the quantity.
    #
    # @return [Measurement] A new +Measurement+ instance with the hyperbolic tangent.
    # @example
    #   measurement = UnitMeasurements::Angle.new(1, "")
    #   result = measurement.tanh
    #   #=> 0.76159415595576
    def tanh
      self.class.new(Math.tanh(quantity), unit)
    end

    # Returns a new +Measurement+ instance representing the hypotenuse of two measurements.
    #
    # @param [Measurement] other The other measurement to form a right-angled triangle.
    # @return [Measurement] A new +Measurement+ instance with the hypotenuse.
    # @raise [ArgumentError] If the units of the measurements are different.
    # @example
    #   measurement1 = UnitMeasurements::Length.new(3, "m")
    #   measurement2 = UnitMeasurements::Length.new(4, "m")
    #   result = measurement1.hypot(measurement2)
    #   #=> 5.0 m
    def hypot(other)
      raise ArgumentError, "Both measurements must have the same unit" unless unit == other.unit

      self.class.new(Math.hypot(quantity, other.quantity), unit)
    end

    # Returns a new +Measurement+ instance with the arctangent of the quantity.
    #
    # @return [Measurement] A new +Measurement+ instance with the arctangent.
    # @example
    #   measurement = UnitMeasurements::Angle.new(1, "")
    #   result = measurement.atan
    #   #=> 45.0 deg
    def atan
      self.class.new(Math.atan(quantity), unit)
    end

    # Returns a new +Measurement+ instance with the arctangent given two measurements.
    #
    # @param [Measurement] other The other measurement for the atan2 operation.
    # @return [Measurement] A new +Measurement+ instance with the arctangent.
    # @raise [ArgumentError] If the units of the measurements are different.
    # @example
    #   x = UnitMeasurements::Length.new(3, "m")
    #   y = UnitMeasurements::Length.new(4, "m")
    #   result = x.atan2(y)
    #   #=> 36.86989764584402 deg
    def atan2(other)
      raise ArgumentError, "Both measurements must have the same unit" unless unit == other.unit

      self.class.new(Math.atan2(quantity, other.quantity), unit)
    end

  end
end
