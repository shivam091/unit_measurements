# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  module Conversion
    # Converts quantity of the measurement to +Integer+.
    #
    # @example
    #   UnitMeasurements::Weight.new(2.25567, "kg").to_i
    #   => 2 kg
    #
    # @return [Measurement]
    def to_i
      self.class.new(quantity.to_i, unit)
    end

    # Converts quantity of the measurement to +Float+.
    #
    # @example
    #   UnitMeasurements::Weight.new(2.25567, "kg").to_f
    #   => 2.25567 kg
    #
    # @return [Measurement]
    def to_f
      self.class.new(quantity.to_f, unit)
    end

    # Converts quantity of the measurement to +Rational+.
    #
    # @example
    #   UnitMeasurements::Weight.new(2.25567, "kg").to_r
    #   => 225567/100000 kg
    #
    # @return [Measurement]
    def to_r
      self.class.new(quantity.to_r, unit)
    end

    # Converts quantity of the measurement to +Complex+.
    #
    # @example
    #   UnitMeasurements::Weight.new(2.25567, "kg").to_c
    #   => 2.25567+0i kg
    #
    # @return [Measurement]
    def to_c
      self.class.new(quantity.to_c, unit)
    end

    # Converts quantity of the measurement to +BigDecimal+.
    #
    # @example
    #   UnitMeasurements::Weight.new(2.25567, "kg").to_d
    #   => 2.25567 kg
    #
    # @return [Measurement]
    def to_d
      self.class.new(quantity.to_d, unit)
    end
  end
end
