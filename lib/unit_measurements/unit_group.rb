# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class UnitGroup
    attr_reader :primitive, :units

    def initialize(primitive, units)
      @units = units.map { |unit| unit.with(unit_group: self) }
      @primitive = unit_for!(primitive) if primitive
    end

    def unit_for(name)
      unit_name_to_unit(name)
    end

    def unit_for!(name)
      unit = unit_for(name)
      raise UnitError, name unless unit

      unit
    end
    alias_method :[], :unit_for!

    def unit_with_name_and_aliases
      units.each_with_object({}) do |unit, hash|
        unit.names.each { |name| hash[name.to_s] = unit }
      end
    end

    def unit_names
      units.map(&:name).sort
    end

    def unit_names_with_aliases
      units.flat_map(&:names).sort
    end

    def unit_name_to_unit(name)
      unit_with_name_and_aliases[name.to_s]
    end

    def defined?(name)
      unit = unit_for(name)

      unit ? unit.name == name.to_s : false
    end

    def unit_or_alias?(name)
      !!unit_for(name)
    end
  end
end
