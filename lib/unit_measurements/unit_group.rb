# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class UnitGroup
    include UnitMethods

    attr_reader :units, :systems

    def initialize(units, systems)
      @units = units.map { |unit| unit.with(unit_group: self) }
      @systems = systems
    end

    def system_for(system_name)
      @systems.find { |system| system.name.to_s == system_name.to_s }
    end
  end
end
