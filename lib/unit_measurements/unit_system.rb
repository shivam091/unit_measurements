# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class UnitSystem
    attr_reader :name, :units

    def initialize(name)
      @name = name
      @units = []
    end

    def add_unit(unit)
      @units << unit
    end
  end
end
