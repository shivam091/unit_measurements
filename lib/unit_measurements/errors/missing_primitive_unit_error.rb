# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::MissingPrimitiveUnitError+ class represents an error
  # that occurs when the primitive unit is not set for a unit group.
  #
  # This error is raised when a user attempts to convert a measurement to the
  # primitive unit of a unit group that does not have a primitive unit defined.
  #
  # @see BaseError
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 5.12.0
  class MissingPrimitiveUnitError < BaseError
    # Initializes a new +MissingPrimitiveUnitError+ instance.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.12.0
    def initialize
      super("The primitive unit is not set for the unit group.")
    end
  end
end
