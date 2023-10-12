# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::PrimitiveUnitAlreadySetError+ class represents an error
  # that occurs when attempting to set the primitive unit for a unit group that
  # already has a primitive unit defined.
  class PrimitiveUnitAlreadySetError < BaseError
    # Initializes a new +PrimitiveUnitAlreadySetError+ object.
    def initialize
      super("The primitive unit is already set for the unit group.")
    end
  end
end
