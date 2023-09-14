# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class UnitError < StandardError
    attr_reader :unit

    def initialize(unit)
      @unit = unit
      super("Invalid unit: '#{unit}'.")
    end
  end
end
