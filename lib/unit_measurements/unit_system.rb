# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class UnitSystem
    include UnitMethods

    attr_reader :name, :primitive, :units

    def initialize(name)
      @name = name
      @primitive = nil
      @units = []
    end

    def add_unit(unit)
      @units << unit
    end

    def set_primitive(primitive)
      @primitive = unit_for!(primitive)
    end

    def primitive?(unit)
      @primitive.to_s == (unit.is_a?(Unit) ? unit.name : unit)
    end
  end
end
