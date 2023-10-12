# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Measurement+ is the superclass for all unit groups.
  # It includes several modules that provide mathematical operations, comparison,
  # conversion, formatting, and other functionalities.
  #
  # It provides methods for initialization, conversion, inspection, and parsing of
  # measurements.
  class Measurement
    include Arithmetic
    include Comparison
    include Conversion
    include Formatter
    include Math

    # Regular expression to match conversion strings.
    CONVERSION_STRING_REGEXP = /(.+?)\s?(?:\s+(?:in|to|as)\s+(.+)|\z)/i.freeze

    # Quantity of the measurement.
    attr_reader :quantity

    # The unit associated with the measurement.
    attr_reader :unit

    # Initializes a new instance of +Measurement+ with a specified +quantity+ and +unit+.
    #
    # You cannot directly initialize a +Measurement+ and use it to convert to other
    # units, rather it is done using the unit group class.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "m")
    #   => 1 m
    #
    # @param [Numeric or String] quantity The quantity of the measurement.
    # @param [String or Unit] unit The unit of the measurement.
    #
    # @raise [BaseError] If +quantity+ or +unit+ is blank.
    def initialize(quantity, unit)
      raise BaseError, "Quantity cannot be blank." if quantity.blank?
      raise BaseError, "Unit cannot be blank." if unit.blank?

      @quantity = convert_quantity(quantity)
      @unit = unit_from_unit_or_name!(unit)
    end

    # Converts the measurement to a +target_unit+.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "m").convert_to("cm")
    #   => 100.0 cm
    #
    # @param [String] target_unit The target unit for conversion.
    #
    # @return [Measurement] A new +Measurement+ instance with the converted +quantity+ and +target unit+.
    def convert_to(target_unit)
      target_unit = unit_from_unit_or_name!(target_unit)

      return self if target_unit == unit

      conversion_factor = (unit.conversion_factor / target_unit.conversion_factor)

      self.class.new((quantity * conversion_factor), target_unit)
    end
    [:to, :in, :as].each { |method_alias| alias_method method_alias, :convert_to }

    # Converts the measurement to a +target_unit+ and updates the current instance.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "m").convert_to!("cm")
    #   => 100.0 cm
    #
    # @param [String] target_unit The target unit for conversion.
    #
    # @return [Measurement] The current +Measurement+ instance with updated +quantity+ and +unit+.
    def convert_to!(target_unit)
      measurement = convert_to(target_unit)
      @quantity, @unit = measurement.quantity, measurement.unit

      self
    end
    [:to!, :in!, :as!].each { |method_alias| alias_method method_alias, :convert_to! }

    # Returns a string representation of the +Measurement+.
    #
    # @param [TrueClass or FalseClass] dump If +true+, returns the dump representation.
    #
    # @return [Object] A representation of the +measurement+.
    def inspect(dump: false)
      dump ? super() : to_s
    end

    # Returns a string representation of the +Measurement+.
    #
    # @return [String] A string representation of the +measurement+.
    def to_s
      "#{quantity} #{unit}"
    end

    # Returns the +quantity+ of the +measurement+.
    #
    # @return [Numeric] Quantity of the measurement.
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

      # The class attribute representing unit group of the measurement.
      #
      # @raise [BaseError] If  directly invoked on +Measurement+ rather than its subclass.
      def unit_group
        raise BaseError, "`Measurement` does not have a `unit_group` object. You cannot directly use `Measurement`. Instead, build a new unit group by calling `UnitMeasurements.build`."
      end

      # Methods delegated from the unit group.
      def_delegators :unit_group, :primitive, :units, :unit_names, :unit_with_name_and_aliases,
                     :unit_names_with_aliases, :unit_for, :unit_for!, :defined?,
                     :unit_or_alias?, :[]

      # Parses an input string and returns a +Measurement+ object depending on
      # the input string.
      #
      # @param [String] input The input string to be parsed.
      #
      # @return [Measurement] A Measurement object.
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
