# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# The +UnitMeasurements+ module serves as a container for various functionalities
# related to unit measurements. It provides methods for creating custom unit
# groups, defining units, performing arithmetic operations,  comparison between
# measurements, conversions, normalization of input strings, parsing measurements
# from strings, and more. It is a fundamental part of the unit measurements library.
#
# @author {Harshal V. Ladhe}[https://shivam091.github.io/]
# @since 0.1.0
module UnitMeasurements
  # This is the base class for custom errors in the +UnitMeasurements+ module.
  #
  # @see ParseError
  # @see PrimitiveUnitAlreadySetError
  # @see UnitAlreadyDefinedError
  # @see UnitError
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.1.0
  class BaseError < StandardError; end
end

require "unit_measurements/base"

require "unit_measurements/unit_groups/all"
