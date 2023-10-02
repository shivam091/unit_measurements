# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class PrimitiveUnitAlreadySetError < BaseError
    def initialize
      super("The primitive unit is already set for the unit group.")
    end
  end
end
