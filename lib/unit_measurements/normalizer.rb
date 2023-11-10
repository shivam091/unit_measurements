# -*- encoding: utf-8 -*-
# -*- frozen_stringing_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Normalizer+ class defines useful methods for handling
  # input strings that may contain non-standard representations of numbers.
  #
  # It maps special symbols of exponents and fractions to their standard
  # counterparts. The class ensures consistent handling of input strings within
  # the library.
  #
  # @see Measurement
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 1.0.0
  class Normalizer
    # A mapping of superscript numbers, plus, and minus signs to their regular
    # counterparts.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
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
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
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

    SPECIAL_SYMBOLS = {
      "π" => ::Math::PI,
      "e" => ::Math::E
    }

    # Matches a combination of digits, optional exponent notation, and optional plus or minus sign.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    EXPONENT_REGEX = /
                       (                                     # Start of the first capturing group
                         [\d]+                               # One or more digits
                         [Ee]?                               # Match an optional 'E' or 'e' for scientific notation
                         [+-]?                               # Match an optional plus or minus sign
                       )                                     # End of the first capturing group
                       (                                     # Start of the second capturing group
                         #{EXPONENTS_SYMBOLS.keys.join("|")} # Match any of the exponent symbols defined in EXPONENTS_SYMBOLS
                       )                                     # End of the second capturing group
                     /x.freeze

    # Matches special fraction symbols.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    FRACTION_REGEX = /
                       (                                     # Start of the capturing group
                         #{FRACTIONS_SYMBOLS.keys.join("|")} # Match any of the fraction symbols defined in FRACTIONS_SYMBOLS
                       )                                     # End of the capturing group
                     /x.freeze

    # Matches a ratio in the format of +numerator:denominator+.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 1.0.0
    RATIO_REGEX    = /
                       (                                     # Start of the first capturing group
                         [\d]+                               # One or more digits, representing the numerator
                       )                                     # End of the first capturing group
                       :                                     # Match a colon (:)
                       (                                     # Start of the second capturing group
                         [\d]+                               # One or more digits, representing the denominator
                       )                                     # End of the second capturing group
                     /x.freeze

    SPECIAL_SYMBOLS_REGEX = /
                              (
                                #{SPECIAL_SYMBOLS.keys.join("|")}
                              )
                            /x.freeze

    class << self
      # Normalizes a string containing special symbols of exponents and fractions,
      # and ratio.
      #
      # The +normalize+ method in the +UnitMeasurements::Normalizer+ module processes
      # the input string to replace special symbols with their equivalent representations,
      # such as converting superscript numbers to regular numbers, special fraction
      # symbols to their numeric fractions, and ratios to fractional format, and
      # remove leading and trailing whitespaces from the +string+.
      #
      # @example Normalizing special symbol of fraction:
      #   UnitMeasurements::Normalizer.normalize("¾")
      #   => "3/4"
      #
      #   UnitMeasurements::Normalizer.normalize(" 1¾ ")
      #   => "1 3/4"
      #
      # @example Normalizing ratio:
      #   UnitMeasurements::Normalizer.normalize("1:2")
      #   => "1/2"
      #
      # @example Normalizing special symbol of exponents:
      #   UnitMeasurements::Normalizer.normalize("1e⁺²")
      #   => "1e+2"
      #
      #   UnitMeasurements::Normalizer.normalize("1e⁻²")
      #   => "1e-2"
      #
      # @param [String] string The input string to be normalized.
      #
      # @return [String] The normalized version of the input string.
      #
      # @see Measurement
      # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
      # @since 1.0.0
      def normalize(string)
        string.dup.tap do |str|
          if str =~ Regexp.new(EXPONENT_REGEX)
            EXPONENTS_SYMBOLS.each do |search, replace|
              str.gsub!(search) { "#{replace}" }
            end
          end

          str.gsub!(FRACTION_REGEX) { " #{FRACTIONS_SYMBOLS[$1]}" }

          str.gsub!(RATIO_REGEX)    { "#{$1.to_i}/#{$2.to_i}" }

          str.gsub!(SPECIAL_SYMBOLS_REGEX) { "#{SPECIAL_SYMBOLS[$1]}" }

          str.strip!
        end
      end
    end
  end
end
