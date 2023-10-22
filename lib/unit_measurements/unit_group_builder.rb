# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::UnitGroupBuilder+ class provides a flexible and
  # configurable way to define units and create unit groups with specific systems
  # and primitive unit.
  #
  # It provides methods like +primitive+, +system+, +unit+, and +si_unit+ to define
  # units and their conversions within the unit group.
  #
  # @see UnitGroup
  # @see PrimitiveUnitAlreadySetError
  # @see UnitAlreadyDefinedError
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.0.0
  class UnitGroupBuilder
    # An array to store the units defined using the builder.
    #
    # @return [Array<Unit>] An array of +Unit+ instances.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    attr_reader :units

    # Initializes a new +UnitGroupBuilder+ instance.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def initialize
      @units = []
    end

    # Defines a +unit+ and adds it to the list of units.
    #
    # @example
    #   unit "in", value: "25.4 mm", aliases: ['"', "inch", "inches"]
    #
    # @param [String|Symbol] name The name of the unit.
    # @param [Numeric|String] value The conversion value of the unit.
    # @param [Array<String|Symbol>, optional] aliases An array of alternative names for the unit.
    #
    # @return [Unit] An instance of +Unit+.
    #
    # @see #build_unit
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def unit(name, value: 1.0, aliases: [])
      @units << build_unit(name, value: value, aliases: aliases)
    end

    # Builds a set of +SI units+ and adds them to the list of units. This method
    # defines unit defined using +name+ along with all the SI prefixes.
    #
    # @example
    #   si_unit "m", aliases: ["meter", "metre", "meters", "metres"]
    #
    # @param [String|Symbol] name The name of the unit.
    # @param [Numeric|String] value The conversion value of the unit.
    # @param [TrueClass|FalseClass] add_binary_prefixes
    #   Whether the unit supports binary SI prefixes along with decimal SI
    #   prefixes.
    # @param [Array<String|Symbol>, optional] aliases An array of alternative names for the unit.
    #
    # @return [Array<Unit>] An array of +Unit+ instances.
    #
    # @see #build_si_units
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def si_unit(name, value: 1.0, add_binary_prefixes: false, aliases: [])
      @units += build_si_units(name, value: value, add_binary_prefixes: add_binary_prefixes, aliases: aliases)
    end

    # Constructs and returns a +UnitGroup+ instance based on the units defined
    # using the builder.
    #
    # @return [UnitGroup]
    #   An instance of +UnitGroup+ containing units and their conversions.
    #
    # @see UnitGroup
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def build
      UnitGroup.new(@primitive, @units, @cache_file)
    end

    # Defines the +unit system+ within the unit group and evaluates the provided
    # block in the context of the builder.
    #
    # This method is used to group multiple units within the certain unit system,
    # viz., metric, imperial, etc.
    #
    # @example Defining an imperial system with inches and feet:
    #   system :imperial do
    #     unit "in", value: "25.4 mm", aliases: ['"', "inch", "inches"]
    #     unit "ft", value: "12 in", aliases: ["'", "foot", "feet"]
    #   end
    #
    # @param [String|Symbol] system_name
    #   The name of the unit system in which the units are to be grouped.
    # @param block A block of code to be executed in the context of the builder.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 4.0.0
    def system(system_name, &block)
      @system = system_name
      instance_eval(&block) if block_given?
    ensure
      @system = nil
    end

    # Sets the +primitive+ unit for the unit group. It raises +PrimitiveUnitAlreadySetError+
    # if the primitive unit has already been set for the unit group.
    #
    # @example
    #   primitive "m"
    #
    # @param [String|Symbol] primitive The name of the primitive unit.
    #
    # @raise [PrimitiveUnitAlreadySetError]
    #   If the primitive unit has already been set for the unit group.
    #
    # @see PrimitiveUnitAlreadySetError
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 4.0.0
    def primitive(primitive)
      raise PrimitiveUnitAlreadySetError if @primitive

      @primitive = primitive
    end

    # Sets the name of the cache file for the unit group.
    #
    # @example
    #   cache "conversion_cache.json"
    #
    # @param [String] cache_file The name of the cache file.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    def cache(cache_file)
      @cache_file = cache_file
    end

    private

    # @private
    # Builds an array of +Unit+ instances with one instance of +Unit+ with name
    # +name+ along with all SI prefixed +Unit+ instances for it.
    #
    # @param [String|Symbol] name The name of the unit.
    # @param [Numeric|String] value The conversion value of the unit.
    # @param [TrueClass|FalseClass] add_binary_prefixes
    #   Whether the unit supports binary SI prefixes along with decimal SI
    #   prefixes.
    # @param [Array<String|Symbol>, optional] aliases
    #   An array of alternative names for the unit.
    #
    # @return [Array<Unit>] An array of +Unit+ instances.
    #
    # @see #build_unit
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def build_si_units(name, value:, add_binary_prefixes:, aliases:)
      si_units = [build_unit(name, value: value, aliases: aliases)]

      si_prefixes = add_binary_prefixes ? (Unit::SI_DECIMAL_PREFIXES + Unit::SI_BINARY_PREFIXES) : Unit::SI_DECIMAL_PREFIXES

      si_prefixes.each do |short_prefix, long_prefix, multiplier|
        si_aliases = long_prefix.product(aliases.to_a).flat_map do |prefix, unit|
          aliases.map { |alias_unit| prefix + alias_unit.to_s }
        end
        si_units << build_unit("#{short_prefix}#{name}", value: "#{multiplier} #{name}", aliases: si_aliases)
      end

      si_units
    end

    # @private
    # Builds an instance of +Unit+ with name +name+, and specified conversion
    # value, and alternate names.
    #
    # @param [String|Symbol] name The name of the unit.
    # @param [Numeric|String] value The conversion value of the unit.
    # @param [Array<String|Symbol>, optional] aliases
    #   An array of alternative names for the unit.
    #
    # @return [Unit] An instance of +Unit+.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def build_unit(name, value:, aliases:)
      unit = Unit.new(name, value: value, aliases: aliases, system: @system)
      check_for_duplicate_unit_names!(unit)

      unit
    end

    # @private
    # Checks for duplicate unit names within the list of units.
    #
    # This method ensures that there are no duplicate unit names within the list
    # of units. If a duplicate name is found, it raises a +UnitAlreadyDefinedError+.
    #
    # This method is used internally by the +UnitGroupBuilder+ class to build units
    # and handle unit definitions.
    #
    # @param [Unit] unit The unit to be checked.
    #
    # @raise [UnitAlreadyDefinedError]
    #   If the unit name is already defined in the list of units.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def check_for_duplicate_unit_names!(unit)
      names = @units.flat_map(&:names)

      if names.any? { |name| unit.names.include?(name) }
        raise UnitAlreadyDefinedError, unit.name
      end
    end
  end
end
