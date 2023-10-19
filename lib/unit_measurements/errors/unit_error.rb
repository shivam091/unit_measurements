# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::UnitError+ class is used to indicate that an invalid
  # unit was encountered. The error message states that the unit is invalid and
  # provides the name of the problematic unit.
  #
  # This error is raised when the unit is not defined within the unit group.
  #
  # @see BaseError
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.0.0
  class UnitError < BaseError
    # The name of the invalid unit.
    #
    # @return [String] The name of the invalid unit.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    attr_reader :unit

    # Initializes a new +UnitError+ instance.
    #
    # @param [String] unit The name of the invalid unit.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def initialize(unit)
      @unit = unit

      super("Invalid unit: '#{unit}'.")
    end
  end
end
