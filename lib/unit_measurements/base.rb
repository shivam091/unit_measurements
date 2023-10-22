# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

require "active_support/all"
require "unit_measurements/version"

module UnitMeasurements
  class << self
    # Creates a new unit group based on the provided +block+ of instructions.
    #
    # The +build+ method allows you to define and create a custom unit group with
    # units and their conversions. It takes a block of instructions as an argument,
    # which is evaluated by an instance of +UnitGroupBuilder+.
    #
    # Within the +block+, you can use various methods provided by +UnitGroupBuilder+
    # to define units, group them into unit system, and set primitive unit of
    # the unit group. These methods include +primitive+, +system+, +si_unit+,
    # and +unit+.
    #
    # The resulting unit group is encapsulated in a new subclass of +Measurement+.
    # This subclass will have access to the defined units and their conversions
    # through the +unit_group+ class attribute.
    #
    # This method provides a powerful way to create specialized unit groups tailored
    # to specific measurement domains.
    #
    # @example
    #   UnitMeasurements.build do
    #     primitive "m"
    #
    #     system :metric do
    #       si_unit "m", aliases: ["meter", "metre", "meters", "metres"]
    #     end
    #
    #     system :imperial do
    #       unit "in", value: "25.4 mm", aliases: ['"', "inch", "inches"]
    #     end
    #
    #     cache "length.json"
    #   end
    #
    # @param block
    #   A block of instructions for defining units and their conversions within
    #   the unit group.
    #
    # @yield [builder]
    #   A block that defines the units to be added to the unit group.
    #   The block takes a {UnitGroupBuilder} instance as a parameter.
    #
    # @yieldparam builder [UnitGroupBuilder]
    #   The {UnitGroupBuilder} instance to define units within the unit group.
    #
    # @yieldreturn [UnitGroup]
    #   Returns an instance of {UnitGroup} containing the units and their conversions
    #   defined within the block.
    #
    # @return [Class]
    #   A new subclass of +Measurement+ with the defined units and conversions.
    #
    # @see Unit
    # @see UnitGroup
    # @see UnitGroupBuilder
    # @see Measurement
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def build(&block)
      builder = UnitGroupBuilder.new
      builder.instance_eval(&block)

      Class.new(Measurement) do
        class << self
          attr_reader :unit_group
        end

        @unit_group = builder.build
      end
    end
  end
end

# The following requires load various components of the unit measurements library.
require "unit_measurements/cache"
require "unit_measurements/unit_group_builder"
require "unit_measurements/unit"
require "unit_measurements/unit_group"
require "unit_measurements/arithmetic"
require "unit_measurements/comparison"
require "unit_measurements/conversion"
require "unit_measurements/math"
require "unit_measurements/normalizer"
require "unit_measurements/parser"
require "unit_measurements/formatter"
require "unit_measurements/measurement"

require "unit_measurements/errors/unit_error"
require "unit_measurements/errors/parse_error"
require "unit_measurements/errors/unit_already_defined_error"
require "unit_measurements/errors/primitive_unit_already_set_error"
