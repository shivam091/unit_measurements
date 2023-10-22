# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::UnitGroup+ class provides a collection of units with
  # methods to retrieve units by name, check if a unit is defined, and much more.
  #
  # It serves as a container for organizing and working with units within the
  # unit group.
  #
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.0.0
  class UnitGroup
    # The primitive unit of the unit group.
    #
    # @example
    #   UnitMeasurements::Length.primitive
    #   => #<UnitMeasurements::Unit: m (meter, meters, metre, metres)>
    #
    # @return [Unit] The primitive unit of the unit group.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    attr_reader :primitive

    # An array of units within the unit group.
    #
    # @example
    #   UnitMeasurements::Length.units
    #   => [#<UnitMeasurements::Unit: m (meter, meters, metre, metres)>, ...]
    #
    # @return [Array<Unit>] An array of +Unit+ instances.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    attr_reader :units

    # The name of the cache file.
    #
    # @example
    #   UnitMeasurements::Length.cache_file
    #   => "length.json"
    #
    # @return [String] The name of the cache file.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    attr_reader :cache_file

    # Initializes a new +UnitGroup+ instance.
    #
    # @param [String|Symbol, optional] primitive The name of the primitive unit.
    # @param [Array<Unit>] units An array of +Unit+ instances.
    # @param [String] cache_file The name of the cache file.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def initialize(primitive, units, cache_file)
      @units = units.map { |unit| unit.with(unit_group: self) }
      @primitive = unit_for!(primitive) if primitive
      @cache_file = cache_file
    end

    # Returns the unit instance for a given unit name. It returns +nil+ if unit
    # is not defined within the unit group.
    #
    # @example
    #   UnitMeasurements::Length.unit_for("m")
    #   => #<UnitMeasurements::Unit: m (meter, meters, metre, metres)>
    #
    #   UnitMeasurements::Length.unit_for("z")
    #   => nil
    #
    # @param [String|Symbol] name The name of the unit.
    #
    # @return [Unit|NilClass] A +Unit+ instance or +nil+ if the unit is not found.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def unit_for(name)
      unit_name_to_unit(name)
    end

    # This method works same as +unit_for+ but it raises +UnitError+ if the
    # unit is not defined within the unit group.
    #
    # @example
    #   UnitMeasurements::Length.unit_for!("m")
    #   => #<UnitMeasurements::Unit: m (meter, meters, metre, metres)>
    #
    #   UnitMeasurements::Length.unit_for!("z")
    #   => Invalid unit: 'z'. (UnitMeasurements::UnitError)
    #
    # @param [String|Symbol] name The name of the unit to look for.
    #
    # @return [Unit] A +Unit+ instance.
    #
    # @raise [UnitError] If the unit is not found.
    #
    # @see #unit_for
    # @see UnitError
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def unit_for!(name)
      unit = unit_for(name)
      raise UnitError, name unless unit

      unit
    end
    alias_method :[], :unit_for!

    # Returns an array of names of all the units defined within the unit group,
    # sorted alphabetically.
    #
    # @example
    #   UnitMeasurements::Length.unit_names
    #   => ["ft", "in", "m", "mi", "yd"]
    #
    # @return [Array<String>] An array of unit names.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def unit_names
      units.map(&:name).sort
    end

    # Returns an array of names and aliases of all the units defined within the
    # unit group, sorted alphabetically.
    #
    # @example
    #   UnitMeasurements::Length.unit_names_with_aliases
    #   => ["\"", "'", "feet", "foot", "ft", "in", "inch", "inches", "m", "meter", "meters", "metre", "metres", "mi", "mile", "miles", "yard", "yards", "yd"]
    #
    # @return [Array<String>] An array of unit names and aliases.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def unit_names_with_aliases
      units.flat_map(&:names).sort
    end

    # Checks if a unit with a given name is defined within the unit group.
    #
    # @example
    #   UnitMeasurements::Length.defined?("m")
    #   => true
    #
    #   UnitMeasurements::Length.defined?("metre")
    #   => false
    #
    # @param [String|Symbol] name The name of the unit to look for.
    #
    # @return [TrueClass|FalseClass] +true+
    #   if the unit is defined, +false+ otherwise.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def defined?(name)
      unit = unit_for(name)

      unit ? unit.name == name.to_s : false
    end

    # Checks if a given name corresponds to a defined unit or an alias of any
    # defined unit.
    #
    # @example
    #   UnitMeasurements::Length.unit_or_alias?("m")
    #   => true
    #
    #   UnitMeasurements::Length.unit_or_alias?("metre")
    #   => true
    #
    # @param [String|Symbol] name The name or alias of the unit to look for.
    #
    # @return [TrueClass|FalseClass] +true+
    #   if the name corresponds to a unit or alias, +false+ otherwise.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def unit_or_alias?(name)
      !!unit_for(name)
    end

    # Returns an array of units associated with a specified +unit_system+.
    #
    # This method takes a unit system name as an argument and filters the units
    # in the unit group to return only those units that belong to the specified
    # unit system. It then returns an array containing these filtered units. If
    # there are no units associated with unit system, it returns empty array.
    #
    # @example
    #   UnitMeasurements::Length.units_for("metric")
    #   => [#<UnitMeasurements::Unit: m (meter, meters, metre, metres)>]
    #
    #   UnitMeasurements::Length.units_for("imperial")
    #   => [#<UnitMeasurements::Unit: in (", inch, inches)>, ...]
    #
    #   UnitMeasurements::Length.units_for("troy")
    #   => []
    #
    # @param [String|Symbol] system_name
    #   The name of the unit system to retrieve units for.
    #
    # @return [Array<Unit>]
    #   An array of +Unit+ instances associated with the specified unit system.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.0.0
    def units_for(system_name)
      units.select { |unit| unit.system.to_s == system_name.to_s }
    end

    # This method works same as +units_for+ method but it raises an error if
    # there are no units associated with the +system_name+.
    #
    # @example
    #   UnitMeasurements::Length.units_for!("metric")
    #   => [#<UnitMeasurements::Unit: m (meter, meters, metre, metres)>]
    #
    #   UnitMeasurements::Length.units_for!("imperial")
    #   => [#<UnitMeasurements::Unit: in (", inch, inches)>, ...]
    #
    #   UnitMeasurements::Length.units_for!("troy")
    #   => Invalid unit system 'troy' within the unit group. (UnitMeasurements::BaseError)
    #
    # @param [String|Symbol] system_name
    #   The name of the unit system to retrieve units for.
    #
    # @return [Array<Unit>]
    #   An array of +Unit+ instances associated with the specified unit system.
    #
    # @raise [BaseError]
    #   If there are no units associated with the provided +system_name+.
    #
    # @see #units_for
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.0.0
    def units_for!(system_name)
      system_units = units_for(system_name)

      unless system_units.any?
        raise BaseError, "Invalid unit system '#{system_name}' within the unit group."
      end

      system_units
    end

    private

    # @private
    # Returns a hash where keys are unit names (including aliases) and values
    # are corresponding +Unit+ instances.
    #
    # @example
    #   UnitMeasurements::Length.unit_with_name_and_aliases
    #   => {"m"=>#<UnitMeasurements::Unit: m (meter, meters, metre, metres)>, ...}
    #
    # @return [Hash] A hash containing unit +names+ as keys and +Unit+ objects as values.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def unit_with_name_and_aliases
      units.each_with_object({}) do |unit, hash|
        unit.names.each { |name| hash[name.to_s] = unit }
      end
    end

    # @private
    # Returns the +Unit+ instance for a given unit name.
    #
    # @param [String|Symbol] name The name of the unit.
    #
    # @return [Unit|NilClass] A +Unit+ instance or +nil+ if the unit is not found.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def unit_name_to_unit(name)
      unit_with_name_and_aliases[name.to_s]
    end
  end
end
