# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class UnitGroupBuilder
    attr_reader :units

    def initialize
      @units, @systems = [], []
    end

    def unit(name, value: 1.0, aliases: [])
      @units << build_unit(name, value: value, aliases: aliases)
    end

    def si_unit(name, value: 1.0, aliases: [])
      @units += build_si_units(name, value: value, aliases: aliases)
    end

    def build
      UnitGroup.new(@units, @systems)
    end

    def system(system_name, &block)
      @current_system = find_or_create_system(system_name)
      instance_eval(&block) if block_given?
    ensure
      @current_system = nil
    end

    private

    def build_si_units(name, value:, aliases:)
      si_units = [build_unit(name, value: value, aliases: aliases)]

      Unit::SI_PREFIXES.each do |short_prefix, long_prefix, multiplier|
        si_aliases = long_prefix.product(aliases.to_a).flat_map do |prefix, unit|
          aliases.map { |alias_unit| prefix + alias_unit.to_s }
        end
        si_units << build_unit("#{short_prefix}#{name}", value: "#{multiplier} #{name}", aliases: si_aliases)
      end

      si_units
    end

    def build_unit(name, value:, aliases:)
      unit = Unit.new(name, value: value, aliases: aliases)
      check_for_duplicate_unit_names!(unit)
      add_unit_to_system(unit)

      unit
    end

    def check_for_duplicate_unit_names!(unit)
      names = @units.flat_map(&:names)

      if names.any? { |name| unit.names.include?(name) }
        raise UnitAlreadyDefinedError.new(unit.name)
      end
    end

    def find_system(name)
      @systems.find { |system| system.name.to_s == name.to_s }
    end

    def find_or_create_system(system_name)
      system = find_system(system_name)
      unless system
        system = UnitSystem.new(system_name)
        @systems << system
      end
      system
    end

    def add_unit_to_system(unit)
      @current_system.add_unit(unit) if @current_system
    end
  end
end
