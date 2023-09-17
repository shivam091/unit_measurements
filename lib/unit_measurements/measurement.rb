# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class Measurement
    include Formatter
    include Comparison
    include Arithmetic

    CONVERSION_STRING_REGEXP = /(.+?)\s?(?:\s+(?:in|to|as)\s+(.+)|\z)/i.freeze

    attr_reader :quantity, :unit

    def initialize(quantity, unit)
      raise BaseError, "Quantity cannot be blank." if quantity.blank?
      raise BaseError, "Unit cannot be blank." if unit.blank?

      @quantity = convert_quantity(quantity)
      @unit = unit_from_unit_or_name!(unit)
    end

    def convert_to(target_unit)
      target_unit = unit_from_unit_or_name!(target_unit)

      return self if target_unit == unit

      conversion_factor = (unit.conversion_factor / target_unit.conversion_factor)
      self.class.new((quantity * conversion_factor), target_unit)
    end
    alias_method :to, :convert_to

    def convert_to!(target_unit)
      measurement = convert_to(target_unit)
      @quantity, @unit = measurement.quantity, measurement.unit
      self
    end
    alias_method :to!, :convert_to!

    def inspect(dump: false)
      return super() if dump

      to_s
    end

    def to_s
      "#{quantity} #{unit}"
    end

    def quantity
      case @quantity
      when Rational
        @quantity.denominator == 1 ? @quantity.numerator : @quantity
      else
        @quantity
      end
    end

    class << self
      extend Forwardable

      def unit_group
        raise "`Measurement` does not have a `unit_group` object. You cannot directly use `Measurement`. Instead, build a new unit group by calling `UnitMeasurements.build`."
      end

      def_delegators :unit_group, :units, :unit_names, :unit_with_name_and_aliases,
                     :unit_names_with_aliases, :unit_for, :unit_for!, :defined?,
                     :unit_or_alias?, :[]

      def parse(input)
        input = Normalizer.normalize(input)
        source, target = input.match(CONVERSION_STRING_REGEXP)&.captures
        target ? _parse(source).convert_to(target) : _parse(source)
      end

      private

      def _parse(string)
        quantity, unit = Parser.parse(string)
        new(quantity, unit)
      end
    end

    private

    def convert_quantity(quantity)
      case quantity
      when Float
        BigDecimal(quantity, Float::DIG)
      when Integer
        Rational(quantity)
      when String
        quantity = Normalizer.normalize(quantity)
        quantity, _ = Parser.parse(quantity)
        quantity
      else
        quantity
      end
    end

    def unit_from_unit_or_name!(value)
      value.is_a?(Unit) ? value : self.class.unit_group.unit_for!(value)
    end
  end
end
