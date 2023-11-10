# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # This module provides methods to define numeric methods for units within a unit group.
  #
  # It includes a method `define_numeric_methods` which defines numeric methods for a list of units.
  # If units is empty, it defaults to defining methods for all units in the unit group.
  module NumericMethods
    # Defines numeric methods for a list of units within the unit group.
    #
    # If units is empty, it defaults to defining methods for all units in the unit group.
    # This method will be used to define numeric methods for specific units.
    #
    # @param [*String, *Symbol] units List of unit names or symbols to define numeric methods for.
    #
    # @return [void]
    #
    # @example
    #   define_numeric_methods("m", :cm, :mm)
    #   #=> Defines numeric methods for meters, centimeters, and millimeters.
    #
    #   define_numeric_methods
    #   #=> Defines numeric methods for all units in the unit group.
    #
    # @see define_numeric_method_for
    #
    # @since 1.1.0
    def define_numeric_methods(*units)
      unit_group = self
      units = units.empty? ? unit_group.units : units

      units.each do |unit|
        define_numeric_method_for(unit, unit_group)
      end
    end

    private

    # This method defines a numeric method for a specific unit within a unit
    # group. It ensures that the method is not already defined in the Numeric
    # class to prevent conflicts. The method is defined dynamically using
    # define_method and associates the unit with the numeric value.

    # @private
    # Defines a numeric method for a specific unit within a unit group.
    #
    # It ensures that the method is not already defined in the Numeric class to prevent conflicts.
    # The method is defined dynamically using define_method and associates the unit with the numeric value.
    #
    # @param [String, Symbol, Unit] unit The unit for which the numeric method is defined.
    # @param [UnitGroup] unit_group The unit group to which the unit belongs.
    #
    # @return [void]
    #
    # @raise [MethodAlreadyDefinedError] If the method is already defined in the +Numeric+ class.
    #
    # @see #define_numeric_methods
    #
    # @since 1.0.0
    def define_numeric_method_for(unit, unit_group)
      unit = unit.is_a?(Unit) ? unit : unit_group.unit_for!(unit)

      unit.names.each do |method_name|
        # Check if the name contains alphabetic characters
        next unless method_name =~ /^[a-zA-Z]+$/

        raise MethodAlreadyDefinedError, [method_name, self] if Numeric.method_defined?(method_name)

        Numeric.define_method(method_name) do
          unit_group.new(self, unit)
        end
      end
    end
  end
end
