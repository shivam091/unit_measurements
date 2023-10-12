# -*- encoding: utf-8 -*-
# -*- frozen_stringing_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Normalizer+ module defines useful methods for handling
  # input strings that may contain non-standard representations of numbers.
  # It allows for consistent processing in the library.
  class Normalizer
    # A mapping of superscript numbers, plus, and minus signs to their regular counterparts.
    EXPONENTS_SYMBOLS = {
      "⁰" => "0",
      "¹" => "1",
      "²" => "2",
      "³" => "3",
      "⁴" => "4",
      "⁵" => "5",
      "⁶" => "6",
      "⁷" => "7",
      "⁸" => "8",
      "⁹" => "9",
      "⁺" => "+",
      "⁻" => "-",
    }.freeze

    # A mapping of special fraction symbols to their equivalent numeric fractions.
    FRACTIONS_SYMBOLS = {
      "¼"  => "1/4",
      "½"  => "1/2",
      "¾"  => "3/4",
      "⅓"  => "1/3",
      "⅔"  => "2/3",
      "⅕"  => "1/5",
      "⅖"  => "2/5",
      "⅗"  => "3/5",
      "⅘"  => "4/5",
      "⅙"  => "1/6",
      "⅚"  => "5/6",
      "⅐"  => "1/7",
      "⅛"  => "1/8",
      "⅜"  => "3/8",
      "⅝"  => "5/8",
      "⅞"  => "7/8",
      "⅑"  => "1/9",
      "⅒" => "1/10",
      "↉"  => "0/3",
    }.freeze

    # Matches a combination of digits, optional exponent notation, and optional plus or minus sign.
    EXPONENT_REGEX = /
                       (                                      # Start of the first capturing group
                         [\d]+                                # One or more digits
                         [Ee]?                                # Match an optional 'E' or 'e' for scientific notation
                         [+-]?                                # Match an optional plus or minus sign
                       )                                      # End of the first capturing group
                       (                                      # Start of the second capturing group
                         #{EXPONENTS_SYMBOLS.keys.join("|")}  # Match any of the exponent symbols defined in EXPONENTS_SYMBOLS
                       )                                      # End of the second capturing group
                     /x.freeze

    # Matches special fraction symbols.
    FRACTION_REGEX = /
                       (                                      # Start of the capturing group
                         #{FRACTIONS_SYMBOLS.keys.join("|")}  # Match any of the fraction symbols defined in FRACTIONS_SYMBOLS
                       )                                      # End of the capturing group
                     /x.freeze

    # Matches a ratio in the format of +numerator:denominator+.
    RATIO_REGEX    = /
                       (                                      # Start of the first capturing group
                         [\d]+                                # One or more digits, representing the numerator
                       )                                      # End of the first capturing group
                       :                                      # Match a colon (:)
                       (                                      # Start of the second capturing group
                         [\d]+                                # One or more digits, representing the denominator
                       )                                      # End of the second capturing group
                     /x.freeze


    class << self
      # Normalizes a string containing special +symbols+, +exponents+, +fractions+,
      # or +ratios+.
      #
      # The +normalize+ method in the +UnitMeasurements::Normalizer+ module processes
      # the input string to replace special symbols with their equivalent representations,
      # such as converting superscript numbers to regular numbers, special fraction
      # symbols to their numeric fractions, and ratios to fractional format. The
      # method returns the normalized string.
      #
      # @example
      #   UnitMeasurements::Normalizer.normalize("¾")
      #   => "3/4"
      #
      #   UnitMeasurements::Normalizer.normalize("1:2")
      #   => "1/2"
      #
      # @param [String] string The input string to be normalized.
      #
      # @return [String] The normalized version of the input string.
      def normalize(string)
        string.dup.tap do |str|
          if str =~ Regexp.new(EXPONENT_REGEX)
            EXPONENTS_SYMBOLS.each do |search, replace|
              str.gsub!(search) { "#{replace}" }
            end
          end

          str.gsub!(FRACTION_REGEX) { " #{FRACTIONS_SYMBOLS[$1]}" }

          str.gsub!(RATIO_REGEX)    { "#{$1.to_i}/#{$2.to_i}" }

          str.strip!
        end
      end
    end
  end
end
