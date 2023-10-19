# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::ParseError+ class is used to represent an error
  # condition where the library encounters difficulty in parsing a given string.
  # This can occur due to invalid or unexpected input formats.
  #
  # The error message states that the parser encountered an error while parsing
  # and provides the string that caused the parsing error.
  #
  # @see BaseError
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.0.0
  class ParseError < BaseError
    # The input string that caused the error while parsing.
    #
    # @return [String] The input string that caused the error while parsing.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    attr_reader :string

    # Initializes a new +ParseError+ instance.
    #
    # @param [String] string The input string that caused the error while parsing.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    def initialize(string)
      @string = string

      super("Unable to parse: '#{string}'.")
    end
  end
end
