# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

require "active_support/all"
require "unit_measurements/version"

module UnitMeasurements
  class << self
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

require "unit_measurements/unit_group_builder"
require "unit_measurements/unit"
require "unit_measurements/unit_group"
require "unit_measurements/normalizer"
require "unit_measurements/parser"
require "unit_measurements/formatter"
require "unit_measurements/measurement"

require "unit_measurements/errors/unit_error"
require "unit_measurements/errors/unit_already_defined_error"
require "unit_measurements/errors/parse_error"
