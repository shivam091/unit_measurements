# -*- encoding: utf-8 -*-
# -*- frozen_stringing_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Parser+ module provides methods for parsing strings to
  # extract quantity and associated unit. It can handle various formats, including
  # complex numbers, scientific notation, and rational numbers.
  class Parser
    # Matches any character sequence that does not consist of digits, whitespace,
    # or forward slashes.
    UNIT_REGEX        = /
                          (                     # Start of the capturing group
                            [^\d\s\/]           # Match any character that is not a digit, whitespace, or a forward slash
                            .*                  # Match zero or more of any character (except for a newline)
                          )                     # End of the capturing group
                        /x.freeze

    # Matches numbers in scientific notation format (e.g., +1.23e-4+).
    SCIENTIFIC_NUMBER = /
                          (                     # Start of a capturing group (denoted by parentheses)
                            [+-]?               # Match an optional plus or minus sign (+ or -)
                            \d*                 # Match zero or more digits
                            \.?                 # Match an optional dot (.)
                            \d+                 # Match one or more digits
                            (?:                 # Start of a non-capturing group
                              [Ee]              # Match either 'E' or 'e'
                              [+-]?             # Match an optional plus or minus sign (+ or -)
                            )?                  # End of the non-capturing group; ? makes it optional
                            \d*                 # Match zero or more digits
                          )                     # End of the capturing group
                        /x.freeze

    # Matches numbers in fractional format (e.g., +1/2+).
    RATIONAL_NUMBER   = /
                          ([+-]?\d+\s+)?        # Start of the first capturing group (optional sign + one or more digits + one or more whitespaces)
                          (                     # Start of the second capturing group (the fraction part)
                            (\d+)               # Start of the third capturing group (one or more digits, the numerator)
                            \/                  # Match a forward slash - the division symbol
                            (\d+)               # Start of the fourth capturing group (one or more digits, the denominator)
                          )                     # End of the second capturing group (the fraction part)
                        /x.freeze

    # Matches complex numbers (e.g., +1-2i+).
    COMPLEX_NUMBER    = /
                          #{SCIENTIFIC_NUMBER}  # Pattern for Scientific number
                          #{SCIENTIFIC_NUMBER}  # Pattern for Scientific number
                          i                     # Match the letter 'i' (the imaginary unit)
                        /x.freeze

    # Matches strings containing scientific notation numbers and unit.
    SCIENTIFIC_REGEX  = /
                          \A                    # Anchor at the start of the string
                          #{SCIENTIFIC_NUMBER}  # Match a scientific notation number (as defined earlier)
                          \s*                   # Match zero or more whitespace characters
                          #{UNIT_REGEX}?        # Match a unit, the '?' makes it optional
                          \z                    # Anchor at the end of the string
                        /x.freeze

    # Matches strings containing rational numbers and unit.
    RATIONAL_REGEX    = /
                          \A                    # Anchor at the start of the string
                          #{RATIONAL_NUMBER}    # Match a rational number (as defined earlier)
                          \s*                   # Match zero or more whitespace characters
                          #{UNIT_REGEX}?        # Match a unit, the '?' makes it optional
                          \z
                        /x.freeze

    # Matches strings containing complex numbers and unit.
    COMPLEX_REGEX     = /
                          \A                    # Anchor at the start of the string
                          #{COMPLEX_NUMBER}     # Match a complex number (as defined earlier)
                          \s*                   # Match zero or more whitespace characters
                          #{UNIT_REGEX}?        # Match a unit, the '?' makes it optional
                          \z
                        /x.freeze

    class << self
      # Parses a string to extract a +quantity+ and its associated +unit+. This
      # method first extracts a +quantity+ and converts it to +Float+ before
      # returning it.
      #
      # @example
      #   UnitMeasurements::Parser.parse("1+2i m")
      #   => [(1.0+2.0i), "m"]
      #
      #   UnitMeasurements::Parser.parse("1/2 m")
      #   => [0.5, "m"]
      #
      # @param [String] string The input string containing a +quantity+ and an optional +unit+.
      #
      # @return [Array<Numeric, String|NilClass>] The parsed +quantity+ and the +unit+ associated with it (or nil if no unit is present).
      #
      # @raise [ParseError] If the string cannot be parsed.
      def parse(string)
        case string
        when COMPLEX_REGEX    then parse_complex(string)
        when SCIENTIFIC_REGEX then parse_scientific(string)
        when RATIONAL_REGEX   then parse_rational(string)
        else                       raise ParseError, string
        end
      end

      private

      # Parses a string representing a complex number with an optional unit.
      def parse_complex(string)
        real, imaginary, unit = string.match(COMPLEX_REGEX)&.captures
        quantity = Complex(real.to_f, imaginary.to_f)

        [quantity, unit]
      end

      # Parses a string representing a scientific number with an optional unit.
      def parse_scientific(string)
        whole, unit = string.match(SCIENTIFIC_REGEX)&.captures
        quantity = whole.to_f

        [quantity, unit]
      end

      # Parses a string representing a rational number with an optional unit.
      def parse_rational(string)
        whole, _, numerator, denominator, unit = string.match(RATIONAL_REGEX)&.captures

        if numerator && denominator
          numerator = numerator.to_f + (denominator.to_f * whole.to_f)
          denominator = denominator.to_f
          quantity = Rational(numerator, denominator).to_f
        else
          quantity = whole.to_f
        end

        [quantity, unit]
      end
    end
  end
end
