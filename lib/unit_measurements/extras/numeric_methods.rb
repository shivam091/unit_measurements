# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # This module provides methods to define +Numeric+ extension methods for a list
  # of units within a unit group. If units are empty, it defaults to defining
  # methods for all units in the unit group.
  #
  # This module is included in the +Measurement+ class to allow defining numeric
  # extension methods for specified units.
  #
  # @see Measurement
  #
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 5.14.0
  module NumericMethods
    # @scope class
    # Defines +Numeric+ extension methods for specified units within the unit
    # group. If units are empty, it defaults to defining methods for all units
    # within the unit group.
    #
    # @param [Array<String|Symbol>] units
    #   An array of units' names for which numeric methods need to be defined.
    #   If empty, methods will be defined for all units in the unit group.
    #
    # @return [Array<Unit>] An array of units for which methods are defined.
    #
    # @example Define numeric methods for metres, centimetres, and millimetres:
    #   UnitMeasurements::Length.define_numeric_methods("metres", :cm, :mm)
    #
    # @example Define numeric methods for all units in the unit group:
    #   UnitMeasurements::Length.define_numeric_methods
    #
    # @see #define_numeric_method_for
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.14.0
    def define_numeric_methods(*units)
      unit_group = self
      units = units.empty? ? unit_group.units : units

      units.inject([]) do |units, unit|
        units << define_numeric_method_for(unit, unit_group)
      end
    end

    private

    # @private
    # @scope class
    # This method defines a numeric method for a specific unit within a unit group.
    # The method is defined dynamically using +define_method+ and associates the
    # unit with the numeric value.
    #
    # @param [String|Symbol|Unit] unit
    #   The unit for which the numeric method is defined.
    # @param [UnitGroup] unit_group The unit group to which the unit belongs.
    #
    # @return [Unit] The unit instance for which the method was defined.
    #
    # @see #define_numeric_methods
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.14.0
    def define_numeric_method_for(unit, unit_group)
      unit = unit.is_a?(Unit) ? unit : unit_group.unit_for!(unit)

      unit.names.each do |method_name|
        # Check if the name contains alphabetic characters
        next unless method_name =~ /^[a-zA-Z]+$/

        Numeric.define_method(method_name) do
          unit_group.new(self, unit)
        end
      end

      unit
    end
  end
end
