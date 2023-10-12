# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::UnitGroup+ class provides a collection of units with
  # methods to retrieve units by name, check if a unit is defined, and more.
  # It serves as a container for organizing and working with units in a unit group.
  class UnitGroup
    # The primitive unit of the group.
    attr_reader :primitive

    # An array of units in the unit group.
    attr_reader :units

    # Initializes a new +UnitGroup+ object.
    #
    # @param [String, optional] primitive The name of the primitive unit.
    # @param [Array<Unit>] units An array of +Unit+ objects.
    def initialize(primitive, units)
      @units = units.map { |unit| unit.with(unit_group: self) }
      @primitive = unit_for!(primitive) if primitive
    end

    # Returns the unit object for a given unit name.
    #
    # @param [String or Symbol] name The name of the unit.
    #
    # @return [Unit or NilClass] A +Unit+ object or +nil+ if the unit is not found.
    def unit_for(name)
      unit_name_to_unit(name)
    end

    # Returns the unit object for a given unit name. It raises +UnitError+ if the
    # unit is not found.
    #
    # @param [String or Symbol] name The name of the unit.
    #
    # @return [Unit] A +Unit+ object.
    #
    # @raise [UnitError] If the unit is not found.
    def unit_for!(name)
      unit = unit_for(name)
      raise UnitError, name unless unit

      unit
    end
    alias_method :[], :unit_for!

    # Returns a hash where keys are unit names (including aliases) and values
    # are corresponding +Unit+ objects.
    #
    # @return [Hash] A hash containing unit +names+ as keys and +Unit+ objects as values.
    def unit_with_name_and_aliases
      units.each_with_object({}) do |unit, hash|
        unit.names.each { |name| hash[name.to_s] = unit }
      end
    end

    # Returns an array of all unit names in the unit group, sorted alphabetically.
    #
    # @return [Array<String>] An array of unit names.
    def unit_names
      units.map(&:name).sort
    end

    # Returns an array of all unit names and aliases in the unit group, sorted alphabetically.
    #
    # @return [Array<String>] An array of unit names and aliases.
    def unit_names_with_aliases
      units.flat_map(&:names).sort
    end

    # Returns the +Unit+ object for a given unit name.
    #
    # @param [String or Symbol] name The name of the unit.
    #
    # @return [Unit or NilClass] A +Unit+ object or +nil+ if the unit is not found.
    def unit_name_to_unit(name)
      unit_with_name_and_aliases[name.to_s]
    end

    # Checks if a unit with a given name is defined in the unit group.
    #
    # @param [String or Symbol] name The name of the unit.
    #
    # @return [TrueClass or FalseClass] +true+ if the unit is defined, +false+ otherwise.
    def defined?(name)
      unit = unit_for(name)

      unit ? unit.name == name.to_s : false
    end

    # Checks if a given name corresponds to a defined unit or an alias.
    #
    # @param [String or Symbol] name The name of the unit.
    #
    # @return [TrueClass or FalseClass] +true+ if the name corresponds to a unit or alias, +false+ otherwise.
    def unit_or_alias?(name)
      !!unit_for(name)
    end
  end
end
