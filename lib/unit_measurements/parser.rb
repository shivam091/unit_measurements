# -*- encoding: utf-8 -*-
# -*- frozen_stringing_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Parser+ class provides methods for parsing strings to
  # extract quantity and associated unit. It can handle various formats, including
  # complex numbers, scientific numbers, and rational numbers for the +quantity+.
  #
  # @see Measurement
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.0.0
  class Parser
    # Matches any character sequence that does not consist of digits, whitespace,
    # or forward slashes.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    UNIT_REGEX        = /
                          (                    # Start of the capturing group
                            [^\d\s\/]          # Match any character that is not a digit, whitespace, or a forward slash
                            .*                 # Match zero or more of any character (except for a newline)
                          )                    # End of the capturing group
                        /x.freeze

    # Matches scientific numbers (e.g., +1.23e-4+).
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    SCIENTIFIC_NUMBER = /
                          (                    # Start of a capturing group (denoted by parentheses)
                            [+-]?              # Match an optional plus or minus sign (+ or -)
                            \d*                # Match zero or more digits
                            \.?                # Match an optional dot (.)
                            \d+                # Match one or more digits
                            (?:                # Start of a non-capturing group
                              [Ee]             # Match either 'E' or 'e'
                              [+-]?            # Match an optional plus or minus sign (+ or -)
                            )?                 # End of the non-capturing group; ? makes it optional
                            \d*                # Match zero or more digits
                          )                    # End of the capturing group
                        /x.freeze

    # Matches rational numbers (e.g., +1/2+).
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    RATIONAL_NUMBER   = /
                          (                    # Start of the first capturing group
                            [+-]?              # Match an optional plus or minus sign (+ or -)
                            \d+                # Match one or more digits
                            \s+                # Match one or more whitespace characters
                          )?                   # End of the first capturing group
                          (                    # Start of the second capturing group (the fraction part)
                            (\d+)              # Start of the third capturing group (one or more digits, the numerator)
                            \/                 # Match a forward slash - the division symbol
                            (\d+)              # Start of the fourth capturing group (one or more digits, the denominator)
                          )                    # End of the second capturing group (the fraction part)
                        /x.freeze

    # Matches complex numbers (e.g., +1-2i+).
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    COMPLEX_NUMBER    = /
                          #{SCIENTIFIC_NUMBER} # Pattern for scientific number
                          #{SCIENTIFIC_NUMBER} # Pattern for scientific number
                          i                    # Match the letter 'i' (the imaginary unit)
                        /x.freeze

    # Matches strings containing scientific numbers and optional unit.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    SCIENTIFIC_REGEX  = /
                          \A                   # Anchor at the start of the string
                          #{SCIENTIFIC_NUMBER} # Match a scientific number (as defined earlier)
                          \s*                  # Match zero or more whitespace characters
                          #{UNIT_REGEX}?       # Match a unit, the '?' makes it optional
                          \z                   # Anchor at the end of the string
                        /x.freeze

    # Matches strings containing rational numbers and optional unit.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    RATIONAL_REGEX    = /
                          \A                   # Anchor at the start of the string
                          #{RATIONAL_NUMBER}   # Match a rational number (as defined earlier)
                          \s*                  # Match zero or more whitespace characters
                          #{UNIT_REGEX}?       # Match a unit, the '?' makes it optional
                          \z                   # Anchor at the end of the string
                        /x.freeze

    # Matches strings containing complex numbers and optional unit.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    COMPLEX_REGEX     = /
                          \A                   # Anchor at the start of the string
                          #{COMPLEX_NUMBER}    # Match a complex number (as defined earlier)
                          \s*                  # Match zero or more whitespace characters
                          #{UNIT_REGEX}?       # Match a unit, the '?' makes it optional
                          \z                   # Anchor at the end of the string
                        /x.freeze

    # Matches any substring enclosed in parentheses. (e.g., (1+2), (2+(4/2)))
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    EXPRESSION        = /
                          \(                   # Matches an opening parenthesis
                            (.+)+              # Captures one or more of any character and digit (except for a newline)
                          \)                   # Matches a closing parenthesis
                        /x.freeze

    # Matches any substring enclosed in parentheses and optional unit.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    EXPRESSION_REGEX  = /
                          \A                   # Anchor at the start of the string
                          #{EXPRESSION}        # Match expressions enclosed in parentheses
                          \s*                  # Match zero or more whitespace characters
                          #{UNIT_REGEX}?       # Match a unit, the '?' makes it optional
                          \z                   # Anchor at the end of the string
                        /x.freeze

    class << self
      # Parses a string to extract a +quantity+ and its associated +unit+. This
      # method first extracts a +quantity+ and converts it to +Float+ before
      # returning it.
      #
      # To get the correct parsed results, you must first normalize the +string+
      # with +Normalizer+ if using the parser standalone.
      #
      # @example Parsing string representing a complex number:
      #   UnitMeasurements::Parser.parse("1+2i m")
      #   => [(1.0+2.0i), "m"]
      #
      # @example Parsing string representing a rational number:
      #   UnitMeasurements::Parser.parse("1/2 m")
      #   => [0.5, "m"]
      #
      # @example Parsing string representing a mixed rational number:
      #   UnitMeasurements::Parser.parse("2 1/2 km")
      #   => [2.5, "km"]
      #
      # @example Parsing string representing a scientific number:
      #   UnitMeasurements::Parser.parse("1e+2 km")
      #   => [100.0, "km"]
      #
      # @param [String] string
      #   The input string containing a +quantity+ and an optional +unit+.
      #
      # @return [Array<Numeric, String|NilClass>]
      #   The parsed +quantity+ and the +unit+ associated with it (or +nil+ if
      #   no unit is specified in the +string+).
      #
      # @raise [ParseError] If the string is invalid and cannot be parsed.
      #
      # @see Measurement
      # @see Normalizer
      # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
      # @since 1.0.0
      def parse(string)
        case string
        when COMPLEX_REGEX    then parse_complex(string)
        when SCIENTIFIC_REGEX then parse_scientific(string)
        when RATIONAL_REGEX   then parse_rational(string)
        when EXPRESSION_REGEX then parse_expression(string)
        else                       raise ParseError, string
        end
      end

      private

      # @private
      # Parses a string representing a complex number with an optional unit.
      #
      # @param [String] string
      #   The input string containing a complex number and an optional unit.
      #
      # @return [Array<Numeric, String|NilClass>]
      #   The parsed complex number and the associated unit (or +nil+ if no unit
      #   is specified in the string).
      #
      # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
      # @since 1.0.0
      def parse_complex(string)
        real, imaginary, unit = string.match(COMPLEX_REGEX)&.captures
        quantity = Complex(real.to_f, imaginary.to_f)

        [quantity, unit]
      end

      # @private
      # Parses a string representing a scientific number with an optional unit.
      #
      # @param [String] string
      #   The input string containing a scientific number and an optional unit.
      #
      # @return [Array<Numeric, String|NilClass>]
      #   The parsed scientific number and the associated unit (or +nil+ if no unit
      #   is specified in the string).
      #
      # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
      # @since 1.0.0
      def parse_scientific(string)
        whole, unit = string.match(SCIENTIFIC_REGEX)&.captures
        quantity = whole.to_f

        [quantity, unit]
      end

      # @private
      # Parses a string representing a rational number with an optional unit.
      #
      # @param [String] string
      #   The input string containing a rational number and an optional unit.
      #
      # @return [Array<Numeric, String|NilClass>]
      #   The parsed rational number and the associated unit (or +nil+ if no unit
      #   is specified in the string).
      #
      # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
      # @since 1.0.0
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

      def parse_expression(string)
        quantity, unit = string.match(EXPRESSION_REGEX)&.captures

        [eval(quantity), unit]
      end
    end
  end
end
