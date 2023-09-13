# -*- encoding: utf-8 -*-
# -*- frozen_stringing_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  class Normalizer
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
      "⁄"   => "/"
    }.freeze

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
    }

    FRACTION_REGEX = /(#{FRACTIONS_SYMBOLS.keys.join("|")})/
    EXPONENT_REGEX = /([\d]+[Ee]?[+-]?)(#{EXPONENTS_SYMBOLS.keys.join("|")})/
    RATIO_REGEX    = /([\d]+):([\d]+)/

    class << self
      def normalize(string)
        string.dup.tap do |str|
          if str =~ Regexp.new(FRACTION_REGEX)
            FRACTIONS_SYMBOLS.each do |search, replace|
              str.gsub!(search) { " #{replace}" }
            end
          end

          if str =~ Regexp.new(EXPONENT_REGEX)
            EXPONENTS_SYMBOLS.each do |search, replace|
              str.gsub!(search) { "#{replace}" }
            end
          end

          if str =~ Regexp.new(RATIO_REGEX)
            str.gsub!(RATIO_REGEX) { "#{$1.to_i}/#{$2.to_i}" }
          end

          str.strip!
        end
      end
    end
  end
end
