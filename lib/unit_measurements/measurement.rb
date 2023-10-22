# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # @abstract
  # The +UnitMeasurements::Measurement+ is the abstract class and serves as superclass
  # for all the unit groups. It includes several modules that provide mathematical
  # operations, comparison, conversion, formatting, and other functionalities.
  #
  # This class provides a comprehensive set of methods and functionality for working
  # with measurements in different units. It includes robust error handling and
  # supports conversion between units. Additionally, it ensures that measurements
  # are consistently represented.
  #
  # You should not directly initialize a +Measurement+ instance. Instead, create
  # specialized measurement types by subclassing +Measurement+ and providing
  # specific units and conversions through the +build+ method defined in the
  # +UnitMeasurements+ module.
  #
  # @see Arithmetic
  # @see Comparison
  # @see Conversion
  # @see Formatter
  # @see Math
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.0.0
  class Measurement
    include Arithmetic
    include Comparison
    include Conversion
    include Formatter
    include Math

    # Regular expression to match conversion strings.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    CONVERSION_STRING_REGEXP = /(.+?)\s?(?:\s+(?:in|to|as)\s+(.+)|\z)/i.freeze

    # Quantity of the measurement.
    #
    # @return [Numeric] Quantity of the measurement.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    attr_reader :quantity

    # The unit associated with the measurement.
    #
    # @return [Unit] The +unit+ instance associated with the measurement.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    attr_reader :unit

    # Initializes a new instance of +Measurement+ with a specified +quantity+
    # and +unit+.
    #
    # This method is intended to be overridden by subclasses and serves as a
    # placeholder for common initialization logic. It raises an error if called
    # directly on the abstract +Measurement+ class.
    #
    # @example Initializing the measurement with scientific number and unit:
    #   UnitMeasurements::Length.new(BigDecimal(2), "km")
    #   => 2.0 km
    #
    #   UnitMeasurements::Length.new("2e+2", "km")
    #   => 200.0 km
    #
    #   UnitMeasurements::Length.new("2e²", "km")
    #   => 200.0 km
    #
    #   UnitMeasurements::Length.new("2e⁻²", "km")
    #   => 0.02 km
    #
    # @example Initializing the measurement with complex number and unit:
    #   UnitMeasurements::Length.new(Complex(2, 3), "km")
    #   => 2+3i km
    #
    #   UnitMeasurements::Length.new("2+3i", "km")
    #   => 2.0+3.0i km
    #
    # @example Initializing the measurement with rational or mixed rational number and unit:
    #   UnitMeasurements::Length.new(Rational(2, 3), "km")
    #   => 0.6666666666666666 km
    #
    #   UnitMeasurements::Length.new(2/3r, "km")
    #   => 2/3 km
    #
    #   UnitMeasurements::Length.new("2/3", "km")
    #   => 0.6666666666666666 km
    #
    #   UnitMeasurements::Length.new("½", "km")
    #   => 0.5 km
    #
    #   UnitMeasurements::Length.new("2 ½", "km")
    #   => 2.5 km
    #
    # @example Initializing the measurement with ratio and unit:
    #   UnitMeasurements::Length.new("1:2", "km")
    #   => 0.5 km
    #
    # @param [Numeric|String] quantity The quantity of the measurement.
    # @param [String|Unit] unit The unit of the measurement.
    #
    # @raise [BaseError] If +quantity+ or +unit+ is blank.
    #
    # @see BaseError
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def initialize(quantity, unit)
      raise BaseError, "Quantity cannot be blank." if quantity.blank?
      raise BaseError, "Unit cannot be blank." if unit.blank?

      @quantity = convert_quantity(quantity)
      @unit = unit_from_unit_or_name!(unit)
    end

    # Converts the measurement to a +target_unit+ and returns new instance of the
    # measurement.
    #
    # When +use_cache+ value is true, conversion factor between units are checked
    # in cache file of the unit group. If cached conversion factor is present in
    # the cache file, it is used for conversion otherwise conversion factor is
    # stored in the cache before converting the measurement to the +target_unit+.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "m").convert_to("cm")
    #   => 100.0 cm
    #
    #   UnitMeasurements::Length.new(1, "cm").convert_to("primitive")
    #   => 0.01 m
    #
    #   UnitMeasurements::Length.new(1, "m").convert_to("cm", use_cache: true)
    #   => 100.0 cm
    #
    # @param [String|Symbol] target_unit
    #   The target unit for conversion. Specifing +primitive+ will convert the
    #   measurement to a primitive unit of the unit group.
    # @param [TrueClass|FalseClass] use_cache
    #   Indicates whether to use cached conversion factors.
    #
    # @return [Measurement]
    #   A new +Measurement+ instance with the converted +quantity+ and
    #   +target unit+.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def convert_to(target_unit, use_cache: false)
      target_unit = if target_unit.to_s.eql?("primitive")
        self.class.unit_group.primitive
      else
        unit_from_unit_or_name!(target_unit)
      end
      return self if target_unit == unit

      conversion_factor = calculate_conversion_factor(target_unit, use_cache)

      self.class.new((quantity * conversion_factor), target_unit)
    end
    alias_method :to, :convert_to
    alias_method :in, :convert_to
    alias_method :as, :convert_to

    # Converts the measurement to a +target_unit+ and updates the current instance.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "m").convert_to!("cm")
    #   => 100.0 cm
    #
    #   UnitMeasurements::Length.new(1, "cm").convert_to!("primitive")
    #   => 0.01 m
    #
    #   UnitMeasurements::Length.new(1, "m").convert_to!("cm", use_cache: true)
    #   => 100.0 cm
    #
    # @param [String|Symbol] target_unit
    #   The target unit for conversion. Specifing +primitive+ will convert the
    #   measurement to a primitive unit of the unit group.
    # @param [TrueClass|FalseClass] use_cache
    #   Indicates whether to use cached conversion factors.
    #
    # @return [Measurement]
    #   The current +Measurement+ instance with updated +quantity+ and +unit+.
    #
    # @see #convert_to
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def convert_to!(target_unit, use_cache: false)
      measurement = convert_to(target_unit, use_cache: use_cache)
      @quantity, @unit = measurement.quantity, measurement.unit

      self
    end
    alias_method :to!, :convert_to!
    alias_method :in!, :convert_to!
    alias_method :as!, :convert_to!

    # Returns an object representation of the +Measurement+.
    #
    # @param [TrueClass|FalseClass] dump If +true+, returns the dump representation.
    #
    # @return [Object] An object representation of the +Measurement+.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def inspect(dump: false)
      dump ? super() : to_s
    end

    # Returns a string representation of the +Measurement+.
    #
    # @return [String] A string representation of the +Measurement+.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def to_s
      "#{quantity} #{unit}"
    end

    # Returns the +quantity+ of the +measurement+.
    #
    # @return [Numeric] Quantity of the measurement.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.5.0
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

      # Methods delegated from the unit group.
      def_delegators :unit_group, :primitive, :units, :cache_file, :unit_names,
                     :unit_with_name_and_aliases, :unit_names_with_aliases,
                     :unit_for, :unit_for!, :defined?, :unit_or_alias?, :[],
                     :units_for, :units_for!

      # Parses an input string and returns a +Measurement+ instance depending on
      # the input string. This method first normalizes the +input+ internally,
      # using the +Normalizer+ before parsing it using the +Parser+.
      #
      # You can separate *source* and *target* units from each other in +input+
      # using +to+, +in+, or +as+.
      #
      # If only the source unit is provided, it returns a new +Measurement+
      # instance with the quantity in the source unit. If both source and target
      # units are provided in the input string, it returns a new +Measurement+
      # instance with the quantity converted to the target unit.
      #
      # @example Parsing string representing a complex number and source unit:
      #   UnitMeasurements::Length.parse("2+3i km")
      #   => 2.0+3.0i km
      #
      # @example Parsing string representing a complex number, source, and target units:
      #   UnitMeasurements::Length.parse("2+3i km in m")
      #   => 2000.0+3000.0i m
      #
      # @example Parsing string representing a rational or mixed rational number and source unit:
      #   UnitMeasurements::Length.parse("½ km")
      #   => 0.5 km
      #
      #   UnitMeasurements::Length.parse("2/3 km")
      #   => 0.666666666666667 km
      #
      #   UnitMeasurements::Length.parse("2 ½ km")
      #   => 2.5 km
      #
      #   UnitMeasurements::Length.parse("2 1/2 km")
      #   => 2.5 km
      #
      # @example Parsing string representing a rational or mixed rational number, source, and target units:
      #   UnitMeasurements::Length.parse("½ km to m")
      #   => 500.0 km
      #
      #   UnitMeasurements::Length.parse("2/3 km to m")
      #   => 666.666666666667 m
      #
      #   UnitMeasurements::Length.parse("2 ½ km in m")
      #   => 2500.0 m
      #
      #   UnitMeasurements::Length.parse("2 1/2 km as m")
      #   => 2500.0 m
      #
      # @example Parsing string representing a scientific number and source unit:
      #   UnitMeasurements::Length.parse("2e² km")
      #   => 200.0 km
      #
      #   UnitMeasurements::Length.parse("2e+2 km")
      #   => 200.0 km
      #
      #   UnitMeasurements::Length.parse("2e⁻² km")
      #   => 0.02 km
      #
      # @example Parsing string representing a scientific number, source, and target units:
      #
      #   UnitMeasurements::Length.parse("2e+2 km to m")
      #   => 200000.0 m
      #
      #   UnitMeasurements::Length.parse("2e⁻² km as m")
      #   => 20.0 m
      #
      # @example Parsing string representing a ratio and source unit:
      #   UnitMeasurements::Length.parse("1:2 km")
      #   => 0.5 km
      #
      # @example Parsing string representing a ratio, source, and target units:
      #   UnitMeasurements::Length.parse("1:2 km in m")
      #   => 500.0 m
      #
      # @param [String] input The input string to be parsed.
      # @param [TrueClass|FalseClass] use_cache
      #   Indicates whether to use cached conversion factors.
      #
      # @return [Measurement] The +Measurement+ instance.
      #
      # @see Parser
      # @see Normalizer
      # @see CONVERSION_STRING_REGEXP
      # @see ._parse
      # @see #convert_to
      # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
      # @since 1.0.0
      def parse(input, use_cache: false)
        input = Normalizer.normalize(input)
        source, target = input.match(CONVERSION_STRING_REGEXP)&.captures

        target ? _parse(source).convert_to(target, use_cache: use_cache) : _parse(source)
      end

      # Returns the +Cache+ instance for the unit group to store and retrieve
      # conversion factors.
      #
      # @return [Cache] The +Cache+ instance.
      #
      # @example
      #   UnitMeasurements::Length.cached
      #   => #<UnitMeasurements::Cache:0x00007fe407249750>
      #
      # @see Cache
      # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
      # @since 5.2.0
      def cached
        @cached ||= Cache.new(self)
      end

      # Clears the cached conversion factors of the unit group.
      #
      # @return [void]
      #
      # @example
      #   UnitMeasurements::Length.clear_cache
      #
      # @see Cache#clear_cache
      #
      # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
      # @since 5.2.0
      def clear_cache
        cached.clear_cache
      end

      private

      # @private
      # The class attribute representing an instance of +UnitGroup+.
      #
      # @return [UnitGroup] An instance of +UnitGroup+.
      #
      # @raise [BaseError]
      #   If directly invoked on +Measurement+ rather than its subclasses.
      #
      # @see UnitGroup
      # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
      # @since 1.0.0
      def unit_group
        raise BaseError, "`Measurement` does not have a `unit_group` instance. You cannot directly use `Measurement`. Instead, build a new unit group by calling `UnitMeasurements.build`."
      end

      # @private
      # Parses the normalized string to return the +Measurement+ instance.
      #
      # @param [String] string String to be parsed.
      #
      # @return [Measurement] The +Measurement+ instance.
      #
      # @see Parser.parse
      # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
      # @since 1.0.0
      def _parse(string)
        quantity, unit = Parser.parse(string)

        new(quantity, unit)
      end
    end

    private

    # @private
    # Converts the measurement quantity to a suitable format for internal use.
    #
    # @param [Numeric|String] quantity The quantity of the measurement.
    #
    # @return [Numeric] The converted quantity.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
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

    # @private
    # Returns the +Unit+ instance associated with the +value+ provided.
    #
    # @param [String|Unit] value
    #   The value representing a unit name or +Unit+ instance.
    #
    # @return [Unit] The +Unit+ instance associated with +value+.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def unit_from_unit_or_name!(value)
      value.is_a?(Unit) ? value : self.class.send(:unit_group).unit_for!(value)
    end

    # Calculates the conversion factor between the current unit and the target
    # unit.
    #
    # If caching is enabled and a cached factor is available, it will be used.
    # Otherwise, the conversion factor will be computed and, if caching is
    # enabled, stored in the cache.
    #
    # @param [Unit] target_unit The target unit for conversion.
    # @param [TrueClass|FalseClass] use_cache
    #   Indicates whether caching should be used.
    #
    # @return [Numeric] The conversion factor.
    #
    # @see Unit
    # @see #convert_to
    #
    # @note If caching is enabled, the calculated conversion factor will be stored in the cache.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    def calculate_conversion_factor(target_unit, use_cache)
      use_cache = (UnitMeasurements.configuration.use_cache || use_cache)

      if use_cache && (cached_factor = self.class.cached.get(unit.name, target_unit.name))
        cached_factor
      else
        factor = unit.conversion_factor / target_unit.conversion_factor
        self.class.cached.set(unit.name, target_unit.name, factor) if use_cache
        factor
      end
    end
  end
end
