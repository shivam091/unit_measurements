# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  module Comparison
    include Comparable

    # Implements +Comparable+ methods on the quantities of two measurements of
    # the same unit group.
    #
    # @example
    #   UnitMeasurements::Weight.new(1, "kg") == UnitMeasurements::Weight.new(1, :kg)
    #   => true
    #
    # @return [Boolean]
    def <=>(object)
      return nil unless object.is_a?(self.class)

      quantity <=> object.convert_to(unit.name).quantity
    end
  end
end
