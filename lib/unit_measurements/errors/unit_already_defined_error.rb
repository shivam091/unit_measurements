# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class UnitAlreadyDefinedError < StandardError
    attr_reader :unit

    def initialize(unit)
      @unit = unit
      super("Unit already defined: '#{unit}'.")
    end
  end
end
