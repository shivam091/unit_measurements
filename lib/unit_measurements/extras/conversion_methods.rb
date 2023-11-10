# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  module ConversionMethods
    def define_conversion_methods(*units)
      unit_group = self
      units = units.empty? ? unit_group.units : units

      units.each do |unit|
        define_conversion_method_for(unit, unit_group)
      end
    end

    private

    def define_conversion_method_for(unit, unit_group)
      unit = unit.is_a?(Unit) ? unit : unit_group.unit_for!(unit)

      unit.names.each do |method_name|
        define_method("in_#{method_name}") do |use_cache: false|
          convert_to(unit, use_cache: use_cache)
        end
        alias_method "to_#{method_name}", "in_#{method_name}"
        alias_method "as_#{method_name}", "in_#{method_name}"
      end
    end
  end
end
