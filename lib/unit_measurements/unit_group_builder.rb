# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::UnitGroupBuilder+ class provides a flexible and configurable
  # way to define units and create unit groups with specific systems and primitive units.
  class UnitGroupBuilder
    # An array to store the units defined using the builder.
    attr_reader :units

    # Initializes a new +UnitGroupBuilder+ object.
    def initialize
      @units = []
    end

    # Defines a +unit+ and adds it to the list of units.
    #
    # @param [String] name The name of the unit.
    # @param [Numeric or String] value The value of the unit.
    # @param [Array<String or Symbol>, optional] aliases An array of aliases for the unit.
    def unit(name, value: 1.0, aliases: [])
      @units << build_unit(name, value: value, aliases: aliases)
    end

    # Builds a set of +SI units+ and adds them to the list of units. This method
    # also generates SI units with various prefixes (e.g., kilometer, millimeter).
    #
    # @param [String] name The name of the unit.
    # @param [Numeric or String] value The value of the unit.
    # @param [Array<String or Symbol>, optional] aliases An array of aliases for the unit.
    def si_unit(name, value: 1.0, aliases: [])
      @units += build_si_units(name, value: value, aliases: aliases)
    end

    # Constructs and returns a +UnitGroup+ object based on the units defined with
    # the builder.
    def build
      UnitGroup.new(@primitive, @units)
    end

    # Defines the +unit system+ within the unit group and evaluates the provided
    # block in the context of the builder.
    #
    # @param [String or Symbol] system_name The name of the system.
    # @param block A block of code to be executed in the context of the builder.
    def system(system_name, &block)
      @system = system_name
      instance_eval(&block) if block_given?
    ensure
      @system = nil
    end

    # Sets the +primitive+ unit for the unit group. It raises +PrimitiveUnitAlreadySetError+
    # if the primitive unit has already been set.
    #
    # @param [String or Symbol] primitive The name of the primitive unit.
    #
    # @raise [PrimitiveUnitAlreadySetError] If the primitive unit has already been set.
    def primitive(primitive)
      raise PrimitiveUnitAlreadySetError if @primitive

      @primitive = primitive
    end

    private

    # Builds unit along with all SI prefixes for it.
    def build_si_units(name, value:, aliases:)
      si_units = [build_unit(name, value: value, aliases: aliases)]

      Unit::SI_DECIMAL_PREFIXES.each do |short_prefix, long_prefix, multiplier|
        si_aliases = long_prefix.product(aliases.to_a).flat_map do |prefix, unit|
          aliases.map { |alias_unit| prefix + alias_unit.to_s }
        end
        si_units << build_unit("#{short_prefix}#{name}", value: "#{multiplier} #{name}", aliases: si_aliases)
      end

      si_units
    end

    def build_unit(name, value:, aliases:)
      unit = Unit.new(name, value: value, aliases: aliases, system: @system)
      check_for_duplicate_unit_names!(unit)

      unit
    end

    def check_for_duplicate_unit_names!(unit)
      names = @units.flat_map(&:names)

      if names.any? { |name| unit.names.include?(name) }
        raise UnitAlreadyDefinedError, unit.name
      end
    end
  end
end
