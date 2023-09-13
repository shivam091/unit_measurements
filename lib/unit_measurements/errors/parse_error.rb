# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class ParseError < StandardError
    attr_reader :string

    def initialize(string)
      @string = string
      super("Unable to parse: '#{string}'.")
    end
  end
end
