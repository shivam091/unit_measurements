# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Comparison+ module is included in measurement classes
  # to enable comparison operations (e.g., less than, equal to, greater than, etc.)
  # between two measurements of same unit group.
  module Comparison
    include Comparable

    # This method is used to compare the quantity of two measurements. It implements
    # the comparison logic based on the +<=>+ method defined in the +Comparable+ module.
    #
    # @example
    #   UnitMeasurements::Length.new(1, "km") == UnitMeasurements::Length.new(1, :km)
    #   => true
    #
    # @param [Measurement] object The measurement object to compare with.
    #
    # @return
    #   +nil+ if the comparison is not possible (e.g., if the +object+ is not of the same
    #   unit group). A negative integer if +self+ is less than +object+. +Zero+ if self
    #   is equal to +object+. A positive integer if +self+ is greater than +object+.
    def <=>(object)
      return nil unless object.is_a?(self.class)

      quantity <=> object.convert_to(unit.name).quantity
    end
  end
end
