# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

require "set"

module UnitMeasurements
  # The +UnitMeasurements::Unit+ class represents a unit of measurement and
  # provides methods to interact with its properties and conversion factors.
  #
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.0.0
  class Unit
    # The name of the unit.
    #
    # @return [String] Name of the unit.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    attr_reader :name

    # The conversion value of the unit. It can be a numeric value or a string in
    # the form of a number followed by a unit name (e.g., “10 m”).
    #
    # @return [String|Numeric|Array<Numeric, String>]
    #   Conversion value of the unit.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    attr_reader :value

    # A set of alternative names for the unit.
    #
    # @return [Set<String>] A set of alternative names.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    attr_reader :aliases

    # The system to which the unit belongs (e.g., “metric”, “imperial”).
    #
    # @return [String] Unit system in which the unit belongs.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 4.0.0
    attr_reader :system

    # The unit group to which the unit belongs.
    #
    # @return [UnitGroup] Unit group in which the unit belongs.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    attr_reader :unit_group

    # Initializes a new +Unit+ instance.
    #
    # @param [String|Symbol] name The name of the unit.
    # @param [String|Numeric] value The conversion value of the unit.
    # @param [Array<String|Symbol>] aliases Alternative names for the unit.
    # @param [String|Symbol|NilClass] system The system to which the unit belongs.
    # @param [UnitGroup|NilClass] unit_group The unit group to which the unit belongs.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def initialize(name, value:, aliases:, system:, unit_group: nil)
      @name = name.to_s.freeze
      @value = value
      @aliases = Set.new(aliases.map(&:to_s).sort.map(&:freeze)).freeze
      @system = system.to_s.freeze
      @unit_group = unit_group
    end

    # Returns a new +Unit+ instance with specified attributes.
    #
    # @param [String|Symbol] name The new name of the unit.
    # @param [String|Numeric] value The new conversion value of the unit.
    # @param [Set<String>] aliases New alternative names for the unit.
    # @param [String|Symbol|NilClass] system The new system to which the unit belongs.
    # @param [UnitGroup|NilClass] unit_group The new unit group to which the unit belongs.
    #
    # @return [Unit] A new unit with specified parameters.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def with(name: nil, value: nil, aliases: nil, system: nil, unit_group: nil)
      self.class.new(
        (name || self.name),
        value: (value || self.value),
        aliases: (aliases || self.aliases),
        system: (system || self.system),
        unit_group: (unit_group || self.unit_group)
      )
    end

    # Returns an array containing the name of the unit and its aliases, sorted
    # alphabetically.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "m").unit.names
    #   => ["m", "meter", "meters", "metre", "metres"]
    #
    # @return [Array<String>] An array of unit names.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def names
      (aliases + [name]).sort.freeze
    end

    # Returns the name of the unit as a string.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "m").unit.to_s
    #   => "m"
    #
    # @return [String] The name of the unit.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def to_s
      name
    end

    # Returns an object representation of the unit, including its aliases if present.
    #
    # @return [Object] An object representation of the +unit+.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def inspect
      aliases = "(#{@aliases.join(", ")})" if @aliases.any?
      "#<#{self.class.name}: #{name} #{aliases}>"
    end

    # Calculates the conversion factor for the unit. This method is recursively
    # invoked to calculate the conversion factor of the unit, if unit conversion
    # +value+ is specified with respect to the other unit.
    #
    # This method uses +parse_value+ method to extract the conversion value and
    # the unit.
    #
    # @return [Numeric] The conversion factor as a numeric value.
    #
    # @see #parse_value
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def conversion_factor
      return value if value.is_a?(Numeric)

      measurement_value, measurement_unit = parse_value(value)
      conversion_factor = unit_group.unit_for!(measurement_unit).conversion_factor

      conversion_factor * measurement_value
    end

    private

    # Binary prefixes for SI units.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.0.0
    SI_BINARY_PREFIXES = [
      ["Ki", %w[kibi], 2.pow(10)],
      ["Mi", %w[mebi], 2.pow(20)],
      ["Gi", %w[gibi], 2.pow(30)],
      ["Ti", %w[tebi], 2.pow(40)],
      ["Pi", %w[pebi], 2.pow(50)],
      ["Ei", %w[exbi], 2.pow(60)],
      ["Zi", %w[zebi], 2.pow(70)],
      ["Yi", %w[yobi], 2.pow(80)],
    ].map(&:freeze).freeze

    # Decimal prefixes for SI units.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    SI_DECIMAL_PREFIXES = [
      ["q",  %w[quecto],    1e-30],
      ["r",  %w[ronto],     1e-27],
      ["y",  %w[yocto],     1e-24],
      ["z",  %w[zepto],     1e-21],
      ["a",  %w[atto],      1e-18],
      ["f",  %w[femto],     1e-15],
      ["p",  %w[pico],      1e-12],
      ["n",  %w[nano],      1e-9],
      ["μ",  %w[micro],     1e-6],
      ["m",  %w[milli],     1e-3],
      ["c",  %w[centi],     1e-2],
      ["d",  %w[deci],      1e-1],
      ["da", %w[deca deka], 1e+1],
      ["h",  %w[hecto],     1e+2],
      ["k",  %w[kilo],      1e+3],
      ["M",  %w[mega],      1e+6],
      ["G",  %w[giga],      1e+9],
      ["T",  %w[tera],      1e+12],
      ["P",  %w[peta],      1e+15],
      ["E",  %w[exa],       1e+18],
      ["Z",  %w[zetta],     1e+21],
      ["Y",  %w[yotta],     1e+24],
      ["R",  %w[ronna],     1e+27],
      ["Q",  %w[quetta],    1e+30]
    ].map(&:freeze).freeze

    # Prefixes for SI binary units and SI decimal units.
    #
    # @see SI_BINARY_PREFIXES
    # @see SI_DECIMAL_PREFIXES
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.19.0
    SI_PREFIXES = SI_BINARY_PREFIXES + SI_DECIMAL_PREFIXES

    # Parses tokens and returns a +conversion value+ and the +unit+.
    #
    # This method is used internally to parse the conversion value of the unit
    # while calculating the conversion factor. It handles cases where the value
    # can be provided as a string or an array containing a number and a unit.
    #
    # For example, if the value is provided as a string in the form of "10 m",
    # it will be parsed to return 10.0 as the conversion value and "m" as the
    # unit.
    #
    # This method returns conversion value in +rational+ number to avoid precision
    # errors and frozen string of unit name.
    #
    # @param [String|Array] tokens
    #   The value to be parsed. It can be either a string or an array containing
    #   a number and a unit.
    #
    # @return [Array<Numeric, String>] The array of conversion value and the unit.
    #
    # @raise [BaseError]
    #   if +tokens+ is not an instance of +Array+ or +String+, or +tokens+ array
    #   contains more than two elements.
    #
    # @see #conversion_factor
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.2.0
    def parse_value(tokens)
      case tokens
      when String
        tokens = Parser.parse(value)
      when Array
        raise BaseError, "Cannot parse [number, unit] formatted tokens from #{tokens}." unless tokens.size == 2
      else
        raise BaseError, "Value of the unit must be defined as string or array, but received #{tokens}"
      end
      [tokens[0].to_r, tokens[1].freeze]
    end
  end
end
