# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # This module provides functionality to define conversion methods for a list
  # of units within a unit group. If units are empty, it defaults to defining
  # methods for all units in the unit group. These methods allow easy conversion
  # between different units within a given unit group.
  #
  # This module is included in the +Measurement+ class to allow defining conversion
  # methods for specified units.
  #
  # @see Measurement
  #
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 5.15.0
  module ConversionMethods
    # @scope class
    # Defines conversion methods for specified +units+ within the unit group.
    # If +units+ are empty, it defaults to defining methods for all units within
    # the unit group.
    #
    # @example Define conversion methods for metres, centimetres, and millimetres:
    #   UnitMeasurements::Length.define_conversion_methods("metres", :cm, :mm)
    #
    # @example Define conversion methods for all units within the unit group:
    #   UnitMeasurements::Length.define_conversion_methods
    #
    # @param [Array<String|Symbol>, optional] units
    #   An array of units' names for which conversion methods need to be defined.
    #   If empty, methods will be defined for all units within the unit group.
    #
    # @return [Array<Unit>]
    #   An array of units for which the conversion methods were defined.
    #
    # @note
    #   This method defines a conversion methods specifically for units that contain
    #   alphabetic characters in their names.
    #
    # @see .define_conversion_method_for
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.15.0
    def define_conversion_methods(*units)
      unit_group = self
      units = units.empty? ? unit_group.units : units

      units.inject([]) do |units, unit|
        units << define_conversion_method_for(unit, unit_group)
      end
    end

    private

    # @private
    # @scope class
    # Defines conversion methods for a specific +unit+ within a +unit_group+.
    # These methods are defined dynamically using +define_method+.
    #
    # @param [String|Symbol|Unit] unit
    #   The unit (or its name) for which the conversion methods need to be defined.
    # @param [UnitGroup] unit_group The unit group to which the unit belongs.
    #
    # @return [Unit]
    #   The unit instance for which the conversion methods were defined.
    #
    # @see .define_conversion_methods
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.15.0
    def define_conversion_method_for(unit, unit_group)
      unit = unit.is_a?(Unit) ? unit : unit_group.unit_for!(unit)

      unit.names.each do |method_name|
        # Check if the name contains alphabetic characters
        next unless method_name =~ /^[a-zA-Z]+$/

        define_method("in_#{method_name}") do |use_cache: false|
          convert_to(unit, use_cache: use_cache)
        end
        alias_method "to_#{method_name}", "in_#{method_name}"
        alias_method "as_#{method_name}", "in_#{method_name}"
      end

      unit
    end
  end
end
