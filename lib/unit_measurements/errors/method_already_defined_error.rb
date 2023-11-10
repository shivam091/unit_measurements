# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class MethodAlreadyDefinedError < BaseError
    attr_reader :method_name, :caller_class

    def initialize(parameters)
      @method_name, @caller_class = *parameters

      super("Method '#{method_name}' is already defined in '#{caller_class}'.")
    end
  end
end
