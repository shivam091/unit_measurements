# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::UnitError+ class is used to indicate that an invalid unit
  # was encountered. The error message states that the unit is invalid and provides
  # the name of the problematic unit.
  #
  # This error is raised when the unit is not defined within the unit group.
  class UnitError < BaseError
    # The name of the invalid unit.
    attr_reader :unit

    # Initializes a new +UnitError+ object.
    #
    # @param [String] unit The name of the invalid unit.
    def initialize(unit)
      @unit = unit

      super("Invalid unit: '#{unit}'.")
    end
  end
end
