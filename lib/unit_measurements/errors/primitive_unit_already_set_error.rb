# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::PrimitiveUnitAlreadySetError+ class represents an
  # error that occurs when attempting to set a primitive unit for the unit group
  # that already has a primitive unit defined.
  #
  # @see BaseError
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 4.0.0
  class PrimitiveUnitAlreadySetError < BaseError
    # Initializes a new +PrimitiveUnitAlreadySetError+ instance.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 4.0.0
    def initialize
      super("The primitive unit is already set for the unit group.")
    end
  end
end
