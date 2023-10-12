# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::UnitAlreadyDefinedError+ class is used to indicate that
  # an attempt was made to define a unit that has already been defined within a unit
  # group. The error message states that the unit is already defined and provides
  # the name of the conflicting unit.
  class UnitAlreadyDefinedError < BaseError
    # The name of the unit that is already defined.
    attr_reader :unit

    # Initializes a new +UnitAlreadyDefinedError+ object.
    #
    # @param [String] unit The name of the unit that is already defined.
    def initialize(unit)
      @unit = unit

      super("Unit already defined: '#{unit}'.")
    end
  end
end
