# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::ParseError+ class is used to represent an error condition
  # where the library encounters difficulty in parsing a given string. This can occur
  # due to invalid or unexpected input formats.
  # The +string+ attribute stores the input string that caused the error, and the error
  # message provides information about the nature of the parsing issue.

  class ParseError < BaseError
    # The input string that caused the parsing error.
    attr_reader :string

    # Initializes a new +ParseError+ object.
    #
    # @param [String] string The input string that caused the parsing error.
    def initialize(string)
      @string = string

      super("Unable to parse: '#{string}'.")
    end
  end
end
