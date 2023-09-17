# Unit Measurements

A library that encapsulate measurements and their units in Ruby.

[![Ruby](https://github.com/shivam091/unit_measurements/actions/workflows/main.yml/badge.svg)](https://github.com/shivam091/unit_measurements/actions/workflows/main.yml)
[![Gem Version](https://badge.fury.io/rb/unit_measurements.svg)](https://badge.fury.io/rb/unit_measurements)
[![Gem Downloads](https://img.shields.io/gem/dt/unit_measurements.svg)](http://rubygems.org/gems/unit_measurements)
[![Maintainability](https://api.codeclimate.com/v1/badges/b8aec9bffa356d108784/maintainability)](https://codeclimate.com/github/shivam091/unit_measurements/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/b8aec9bffa356d108784/test_coverage)](https://codeclimate.com/github/shivam091/unit_measurements/test_coverage)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/shivam091/unit_measurements/blob/main/LICENSE)

**Harshal V. Ladhe, M.Sc. Computer Science.**

## Introduction

Many technical applications need use of specialized calculations at some point of time.
Frequently, these calculations require unit conversions to ensure accurate
results. Needless to say, this is a pain to properly keep track of, and is prone
to numerous errors.

## Solution

The `unit_measurements` gem is designed to simplify the handling of units for scientific calculations.

## Advantages

1. Provides easy conversion between units.
2. Built in support for various [unit groups](units.md).
3. Lightweight and easily extensible to include other units and conversions.
4. Can convert `complex`, `rational`, `fractions`, `exponents`, `scientific notations`, and `ratios`.

## Disclaimer

_The unit conversions presented in `unit_measurements` are provided for reference and general informational purposes.
While we aim to offer accurate conversions, we cannot guarantee their precision in all scenarios.
Users are advised to cross-verify conversions as needed for their specific use cases._

## Minimum Requirements

* Ruby 3.2.2+ (https://www.ruby-lang.org/en/downloads/branches/)

## Installation

If using bundler, first add this line to your application's Gemfile:

```ruby
gem "unit_measurements"
```

And then execute:

`$ bundle install`

Or otherwise simply install it yourself as:

`$ gem install unit_measurements`

## Usage

The **`UnitMeasurements::Measurement`** class is responsible for conversion of quantity to various compatble units.

Measurements can't be initialized or converted to other units directly with the `UnitMeasurements::Measurement` class,
but rather with the unit group classes viz., `UnitMeasurements::Weight`, `UnitMeasurements::Length`, etc.

**Initialize a measurement:**

```ruby
UnitMeasurements::Weight.new(1, :kg)
#=> 1 kg
```

**Converting to other units:**

This gem allows you to convert among units of same unit group.
You can convert measurement to other unit using `#convert_to` (aliased as `#to`)
or `#convert_to!` (aliased as `#to!`) methods.

You can use `#convert_to` as:

```ruby
UnitMeasurements::Weight.new(1, :kg).convert_to(:g)
#=> 1000.0 g
```

If you want to modify measurement object itself, you can use `#convert_to!` method as:

```ruby
UnitMeasurements::Weight.new(1, :kg).convert_to!(:g)
#=> 1000.0 g
```

You can also chain call of `#convert_to` and `#convert_to!` methods as:

```ruby
UnitMeasurements::Weight.new(1, :kg).convert_to(:g).convert_to(:t).convert_to!(:q)
#=> 0.01 q
```

**Parse string without having to split out the quantity and source unit:**

```ruby
UnitMeasurements::Weight.parse("1 kg")
#=> 1.0 kg
```

**Parse string that mentions quantity, source unit, and target unit:**

```ruby
UnitMeasurements::Weight.parse("1 kg to g")
#=> 1000.0 g
UnitMeasurements::Weight.parse("1 kg as g")
#=> 1000.0 g
UnitMeasurements::Weight.parse("1 kg in g")
#=> 1000.0 g
```

**Parse rational numbers, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Weight.new(Rational(2, 3), :kg).convert_to(:g)
#=> 666.666666666667 g
UnitMeasurements::Weight.new("2/3", :kg).convert_to(:g)
#=> 666.666666666667 g
UnitMeasurements::Weight.parse("2/3 kg").convert_to(:g)
#=> 666.666666666667 g
UnitMeasurements::Weight.parse("2/3 kg to g")
#=> 666.666666666667 g
```

**Parse complex numbers, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Weight.new(Complex(2, 3), :kg).convert_to(:g)
#=> 2000.0+3000.0i g
UnitMeasurements::Weight.new("2+3i", :kg).convert_to(:g)
#=> 2000.0+3000.0i g
UnitMeasurements::Weight.parse("2+3i kg").convert_to(:g)
#=> 2000.0+3000.0i g
UnitMeasurements::Weight.parse("2+3i kg to g")
#=> 2000.0+3000.0i g
```

**Parse scientific numbers, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Weight.new(BigDecimal(2), :kg).convert_to(:g)
#=> 2000.0 g
UnitMeasurements::Weight.new(0.2e1, :kg).convert_to(:g)
#=> 2000.0 g
UnitMeasurements::Weight.parse("0.2e1 kg").convert_to(:g)
#=> 2000.0 g
UnitMeasurements::Weight.parse("0.2e1 kg to g")
#=> 2000.0 g
```

**Parse ratios, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Weight.new("1:2", :kg).convert_to(:g)
#=> 500.0 g
UnitMeasurements::Weight.parse("1:2 kg").convert_to(:g)
#=> 500.0 g
UnitMeasurements::Weight.parse("1:2 kg to g")
#=> 500.0 g
```

**Parse fractional notations, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Weight.new("1/2", :kg).convert_to(:g)
#=> 500.0 g
UnitMeasurements::Weight.parse("1/2 kg").convert_to(:g)
#=> 500.0 g
UnitMeasurements::Weight.parse("1/2 kg to g")
#=> 500.0 g
UnitMeasurements::Weight.new("½", :kg).convert_to(:g)
#=> 500.0 g
UnitMeasurements::Weight.parse("½ kg").convert_to(:g)
#=> 500.0 g
UnitMeasurements::Weight.parse("½ kg to g")
#=> 500.0 g
```

**Parse mixed fractional notations, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Weight.new("2 1/2", :kg).convert_to(:g)
#=> 2500.0 g
UnitMeasurements::Weight.parse("2 1/2 kg").convert_to(:g)
#=> 2500.0 g
UnitMeasurements::Weight.parse("2 1/2 kg to g")
#=> 2500.0 g
UnitMeasurements::Weight.new("2 ½", :kg).convert_to(:g)
#=> 2500.0 g
UnitMeasurements::Weight.parse("2 ½ kg").convert_to(:g)
#=> 2500.0 g
UnitMeasurements::Weight.parse("2 ½ kg to g")
#=> 2500.0 g
```

Supported special characters for fractional notations are `¼`, `½`, `¾`, `⅓`, `⅔`, `⅕`, `⅖`, `⅗`, `⅘`, `⅙`, `⅚`, `⅐`, `⅛`, `⅜`, `⅝`, `⅞`, `⅑`, `⅒`, `↉`, `⁄`.

**Parse exponents, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Weight.new("2e+2", :kg).convert_to(:g)
#=> 200000.0 g
UnitMeasurements::Weight.parse("2e² kg").convert_to(:g)
#=> 200000.0 g
UnitMeasurements::Weight.parse("2e+2 kg to g")
#=> 200000.0 g
UnitMeasurements::Weight.new("2e⁺²", :kg).convert_to(:g)
#=> 200000.0 g
UnitMeasurements::Weight.parse("2e⁺2 kg").convert_to(:g)
#=> 200000.0 g
UnitMeasurements::Weight.parse("2e⁻² kg to g")
#=> 20.0 g
```

Supported special characters for exponents are `⁰`, `¹`, `²`, `³`, `⁴`, `⁵`, `⁶`, `⁷`, `⁸`, `⁹`, `⁺`, `⁻`.

**Formatting measurement:**

If you want to format measurement to certain format, you can use `#format` method.
If format is not specified, it defaults to `"%.2<value>f %<unit>s"`.

```ruby
UnitMeasurements::Weight.parse("2 kg").to(:st).format
#=> "0.31 st"
UnitMeasurements::Weight.parse("2 kg").to(:st).format("%.4<quantity>f %<unit>s")
#=> "0.3149 st"
UnitMeasurements::Weight.parse("2 kg").to(:st).format("%.4<quantity>f")
#=> "0.3149"
```

**Extract the unit and the quantity from measurement:**

```ruby
weight = UnitMeasurements::Weight.new(1, :kg)
weight.quantity
#=> 1
weight.unit
#=> #<UnitMeasurements::Unit: kg (kilogram, kilogramme, kilogrammes, kilograms)>
```

**See all units of the unit group:**

```ruby
UnitMeasurements::Weight.units
#=> [#<UnitMeasurements::Unit: g (gram, gramme, grammes, grams)>, ..., ...]
```

**See names of all valid units of the unit group:**

```ruby
UnitMeasurements::Weight.unit_names
#=> ["g", "kg", "lb", "oz", ...]
```

**See all valid units of the unit group along with their aliases:**

```ruby
UnitMeasurements::Weight.unit_names_with_aliases
#=> ["g", "gram", "gramme", "grammes", "grams", "kg", "kilogram", "kilogramme", "kilogrammes", "kilograms", "lb", "ounce", "ounces", "oz", "pound", "pounds", ...]
```

**Finding units within the unit group:**

You can use `#unit_for` or `#unit_for!` (aliased as `#[]`) to find units within
the unit group. `#unit_for!` method returns error if a unit is not present in the
unit group.

```ruby
UnitMeasurements::Weight.unit_for(:g)
#=> #<UnitMeasurements::Unit: g (gram, gramme, grammes, grams)>
UnitMeasurements::Weight.unit_for(:z)
#=> nil
UnitMeasurements::Weight.unit_for!(:g)
#=> #<UnitMeasurements::Unit: g (gram, gramme, grammes, grams)>
UnitMeasurements::Weight.unit_for!(:z)
#=> Invalid unit: 'z'. (UnitMeasurements::UnitError)
```

**Finding whether the unit is defined within the unit group:**

```ruby
UnitMeasurements::Weight.defined?(:g)
#=> true
UnitMeasurements::Weight.defined?(:kg)
#=> true
UnitMeasurements::Weight.defined?(:gramme)
#=> false
```

**Check if the unit is a valid unit or alias within the unit group:**

```ruby
UnitMeasurements::Weight.unit_or_alias?(:g)
#=> true
UnitMeasurements::Weight.unit_or_alias?(:kg)
#=> true
UnitMeasurements::Weight.unit_or_alias?(:gramme)
#=> true
```

### Comparisons

You have ability to compare the measurements with the same or different units within the same unit group.
For example, comparing weight with weight will work, comparing a weight with a area would fail.
Allowed comparisons are `==`, `!=`, `>`, `>=`, `<`, and `<=`.

```ruby
UnitMeasurements::Weight.new(1, "kg") == UnitMeasurements::Weight.new(1, :kg)
#=> true
UnitMeasurements::Weight.parse("1 kg") == UnitMeasurements::Weight.parse("1000 g")
#=> true
UnitMeasurements::Weight.parse("1 kg") != UnitMeasurements::Weight.parse("1 g")
#=> true
UnitMeasurements::Weight.parse("1 kg") <= UnitMeasurements::Weight.parse("0.5 kg")
#=> false
UnitMeasurements::Weight.parse("1 kg") >= UnitMeasurements::Weight.parse("0.5 kg")
#=> true
```

### Arithmetic

You have ability to perform arithmetic operations on measurements with the same or
different units within a same unit group. You can perform arithmetic operations on
measurement by either other compatible measurement or number.

**Methods:**
1. `#+` - Adds the other measurement quantity or number to the measurement.
2. `#-` - Subtracts the other measurement quantity or number from the measurement.
3. `#*` - Multiplies the measurement quantity by other measurement quantity or number.
4. `#/` - Divides the measurement quantity by other measurement quantity or number.

```ruby
UnitMeasurements::Weight.new(1, :kg) + UnitMeasurements::Weight.new(1, :g)
#=> 1.001 kg
UnitMeasurements::Weight.new(2, :kg) - 1
#=> 1 kg
UnitMeasurements::Weight.new(2, :kg) * 2
#=> 4 kg
UnitMeasurements::Weight.new(4, :kg) / UnitMeasurements::Weight.new(2, :kg)
#=> 2 kg
```

## Units

The **`UnitMeasurements::Unit`** class is used to represent the units for a measurement.

### SI units support

There is support for SI units through the use of `si_unit` method.
Units declared through it will have automatic support for all SI prefixes:

| Multiplying Factor                        | SI Prefix  | Scientific Notation |
| ----------------------------------------- | ---------- | ------------------- |
| 1 000 000 000 000 000 000 000 000 000 000 | quetta (Q) | 10^30               |
| 1 000 000 000 000 000 000 000 000 000     | ronna (R)  | 10^27               |
| 1 000 000 000 000 000 000 000 000         | yotta (Y)  | 10^24               |
| 1 000 000 000 000 000 000 000             | zetta (Z)  | 10^21               |
| 1 000 000 000 000 000 000                 | exa (E)    | 10^18               |
| 1 000 000 000 000 000                     | peta (P)   | 10^15               |
| 1 000 000 000 000                         | tera (T)   | 10^12               |
| 1 000 000 000                             | giga (G)   | 10^9                |
| 1 000 000                                 | mega (M)   | 10^6                |
| 1 000                                     | kilo (k)   | 10^3                |
| 1 00                                      | hecto (h)  | 10^2                |        
| 1 0                                       | deca (da)  | 10^1                |
| 0.1                                       | deci (d)   | 10^-1               |
| 0.01                                      | centi (c)  | 10^-2               |
| 0.001                                     | milli (m)  | 10^-3               |
| 0.000 001                                 | micro (µ)  | 10^-6               |
| 0.000 000 001                             | nano (n)   | 10^-9               |
| 0.000 000 000 001                         | pico (p)   | 10^-12              |
| 0.000 000 000 000 001                     | femto (f)  | 10^-15              |
| 0.000 000 000 000 000 001                 | atto (a)   | 10^-18              |
| 0.000 000 000 000 000 000 001             | zepto (z)  | 10^-21              |
| 0.000 000 000 000 000 000 000 001         | yocto (y)  | 10^-24              |
| 0.000 000 000 000 000 000 000 000 001     | ronto (r)  | 10^-27              |
| 0.000 000 000 000 000 000 000 000 000 001 | quecto (q) | 10^-30              |

### Bundled units

There are tons of units that are bundled in `unit_measurements`. You can check them out [here](units.md).

### Specifing units

By default, `unit_measurements` ships with all the unit groups and this happens automatically
when requiring the gem in the following manner.

```ruby
require "unit_measurements"
```

**You can skip these unit groups and only [build your own unit groups](#building-new-unit-groups) by doing:**

```ruby
require "unit_measurements/base"
```

or simply

```ruby
gem "unit_measurements", require: "unit_measurements/base"
```

**You can also use unit groups in your application as per your need as:**

```ruby
require "unit_measurements/base"

require "unit_measurements/unit_groups/length"
require "unit_measurements/unit_groups/weight"
require "unit_measurements/unit_groups/volume"
```

or

```ruby
gem "unit_measurements", require: ["unit_measurements/base", "unit_measurements/unit_groups/length"]
```

### Building new unit groups

This library provides simpler way to build your own unit groups. To build new unit group,
use `UnitMeasurements.build` in order to define base units and conversion units within it:

If you build unit using `base` method, base unit automatically gets set for the unit group.

```ruby
UnitMeasurements::Time = UnitMeasurements.build do
  # Add a base unit to the group.
  base :s, aliases: [:second, :seconds]

  # Add other units to the group, along with their conversion multipliers against
  # base unit.
  unit :min, value: 60.0, aliases: [:minute, :minutes]

  # You can also specify conversion string if it's converted against a unit other
  # than the unit group's base unit.
  unit :h, value: "60 min", aliases: [:hour, :hours]

  # You can also specify unit value as an array.
  unit :d, value: [24, :h], aliases: [:day, :days]
end
```

If the unit is supporting [si prefixes](#si-units-support), you can use `si_unit` method to build it.
If you build unit using `si_unit`, Base unit is automatically added to the group along with all SI prefixes for it.

```ruby
UnitMeasurements::Time = UnitMeasurements.build do
  # Add a SI unit to the unit group
  si_unit :s, aliases: [:second, :seconds]

  unit :min, value: "60 s", aliases: [:minute, :minutes]
end
```

All units allow aliases, as long as they are unique. Unit symbol can be used to
define the unit as long as it is unique. All unit names are case sensitive.

### Namespaces

All unit groups and their definition classes are namespaced by default, but can be aliased in your application.

```ruby
Weight = UnitMeasurements::Weight
Length = UnitMeasurements::Length
Volume = UnitMeasurements::Volume
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright 2023 [Harshal V. LADHE](https://github.com/shivam091), Released under the [MIT License](http://opensource.org/licenses/MIT).
