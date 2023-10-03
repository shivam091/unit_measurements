# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class UnitGroupBuilder
    attr_reader :units

    def initialize
      @units = []
    end

    def unit(name, value: 1.0, aliases: [])
      @units << build_unit(name, value: value, aliases: aliases)
    end

    def si_unit(name, value: 1.0, aliases: [])
      @units += build_si_units(name, value: value, aliases: aliases)
    end

    def build
      UnitGroup.new(@primitive, @units)
    end

    def system(system_name, &block)
      @system = system_name
      instance_eval(&block) if block_given?
    ensure
      @system = nil
    end

    def primitive(primitive)
      raise PrimitiveUnitAlreadySetError if @primitive

      @primitive = primitive
    end

    private

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
        raise UnitAlreadyDefinedError.new(unit.name)
      end
    end
  end
end
