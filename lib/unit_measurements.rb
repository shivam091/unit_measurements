# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# The +UnitMeasurements+ module provides a set of tools for handling measurements
# and units. It enables the creation of custom unit groups and defines methods
# for various operations on measurements.
module UnitMeasurements
  # This is the base class for custom errors in the +UnitMeasurements+ module.
  class BaseError < StandardError; end
end

require "unit_measurements/base"

require "unit_measurements/unit_groups/all"
