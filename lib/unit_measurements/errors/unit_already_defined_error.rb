# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::UnitAlreadyDefinedError+ class is used to indicate
  # that an attempt was made to define a unit that has already been defined
  # within a unit group.
  #
  # The error message states that the unit is already defined and provides the
  # name of the conflicting unit.
  #
  # @see BaseError
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.0.0
  class UnitAlreadyDefinedError < BaseError
    # The name of the unit that is already defined.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    attr_reader :unit

    # Initializes a new +UnitAlreadyDefinedError+ instance.
    #
    # @param [String] unit The name of the unit that is already defined.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def initialize(unit)
      @unit = unit

      super("Unit already defined: '#{unit}'.")
    end
  end
end
