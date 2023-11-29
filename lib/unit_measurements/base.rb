# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

require "active_support/all"
require "unit_measurements/version"

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
  # @see UnitError
  # @see ParseError
  # @see BlankUnitError
  # @see BlankQuantityError
  # @see UnitAlreadyDefinedError
  # @see MissingPrimitiveUnitError
  # @see PrimitiveUnitAlreadySetError
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.1.0
  class BaseError < StandardError; end

  class << self
    # Allows setting an instance of +Configuration+ containing values of desired
    # configurable options.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.3.0
    attr_writer :configuration

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

    # Returns an instance of +Configuration+ with the values of desired configurable
    # options of +*unit_measurements*+. If instance is not present, it initializes
    # a new instance of {Configuration}.
    #
    # @return [Configuration] An instance of +Configuration+.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.3.0
    def configuration
      @configuration ||= Configuration.new
    end

    # Reset the configuration to its default state.
    #
    # @example
    #   UnitMeasurements.reset
    #
    # @return [Configuration] A new +Configuration+ object.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.3.0
    def reset
      @configuration = Configuration.new
    end

    # Configures options of the +*UnitMeasurements*+ module using a block. It
    # yields the current +Configuration+ instance for updating default values of
    # options by new values specified within a block.
    #
    # @example
    #   UnitMeasurements.configure do |config|
    #     config.use_cache = false
    #   end
    #
    # @yield [configuration] The current +Configuration+ instance.
    #
    # @yieldparam [Configuration] configuration
    #   An instance of +Configuration+ with the new values of options.
    #
    # @yieldreturn [Configuration] The updated +Configuration+ instance.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.3.0
    def configure
      yield configuration
    end
  end
end

# The following requires load various components of the unit measurements library.
require "unit_measurements/extras/numeric_methods"
require "unit_measurements/extras/conversion_methods"

require "unit_measurements/configuration"
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
require "unit_measurements/errors/blank_quantity_error"
require "unit_measurements/errors/blank_unit_error"
require "unit_measurements/errors/missing_primitive_unit_error"
