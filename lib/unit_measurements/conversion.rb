# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Conversion+ module defines methods for converting the
  # quantity of a measurement to various numeric types. These methods allow for
  # flexibility in handling measurements in different numeric formats.
  module Conversion
    # Converts quantity of the measurement to +Integer+.
    #
    # @example
    #   UnitMeasurements::Length.new(2.25567, "km").to_i
    #   => 2 km
    #
    # @return [Measurement] A new +Measurement+ object with the quantity converted to an +Integer+.
    def to_i
      self.class.new(quantity.to_i, unit)
    end

    # Converts quantity of the measurement to +Float+.
    #
    # @example
    #   UnitMeasurements::Length.new(2.25567, "km").to_f
    #   => 2.25567 km
    #
    # @return [Measurement] A new +Measurement+ object with the quantity converted to a +Float+.
    def to_f
      self.class.new(quantity.to_f, unit)
    end

    # Converts quantity of the measurement to +Rational+.
    #
    # @example
    #   UnitMeasurements::Length.new(2.25567, "km").to_r
    #   => 225567/100000 km
    #
    # @return [Measurement] A new +Measurement+ object with the quantity converted to a +Rational+.
    def to_r
      self.class.new(quantity.to_r, unit)
    end

    # Converts quantity of the measurement to +Complex+.
    #
    # @example
    #   UnitMeasurements::Length.new(2.25567, "km").to_c
    #   => 2.25567+0i km
    #
    # @return [Measurement] A new +Measurement+ object with the quantity converted to a +Complex+ number.
    def to_c
      self.class.new(quantity.to_c, unit)
    end

    # Converts quantity of the measurement to +BigDecimal+.
    #
    # @example
    #   UnitMeasurements::Length.new(2.25567, "km").to_d
    #   => 2.25567 km
    #
    # @return [Measurement] A new +Measurement+ object with the quantity converted to a +BigDecimal+.
    def to_d
      self.class.new(quantity.to_d, unit)
    end
  end
end
