# -*- encoding: utf-8 -*-
# -*- frozen_stringing_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class Parser
    UNIT_REGEX        = /([^\d\s\/].*)/.freeze

    SCIENTIFIC_NUMBER = /([+-]?\d*\.?\d+(?:[Ee][+-]?)?\d*)/.freeze
    RATIONAL_NUMBER   = /([+-]?\d+\s+)?((\d+)\/(\d+))/.freeze
    COMPLEX_NUMBER    = /#{SCIENTIFIC_NUMBER}#{SCIENTIFIC_NUMBER}i/.freeze

    SCIENTIFIC_REGEX  = /\A#{SCIENTIFIC_NUMBER}\s*#{UNIT_REGEX}?\z/.freeze
    RATIONAL_REGEX    = /\A#{RATIONAL_NUMBER}\s*#{UNIT_REGEX}?\z/.freeze
    COMPLEX_REGEX     = /\A#{COMPLEX_NUMBER}\s*#{UNIT_REGEX}?\z/.freeze

    class << self
      def parse(string)
        case string
        when COMPLEX_REGEX    then parse_complex(string)
        when SCIENTIFIC_REGEX then parse_scientific(string)
        when RATIONAL_REGEX   then parse_rational(string)
        else                       raise ParseError, string
        end
      end

      private

      def parse_complex(string)
        real, imaginary, unit = string.match(COMPLEX_REGEX)&.captures
        quantity = Complex(real.to_f, imaginary.to_f)

        [quantity, unit]
      end

      def parse_scientific(string)
        whole, unit = string.match(SCIENTIFIC_REGEX)&.captures
        quantity = whole.to_f

        [quantity, unit]
      end

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
