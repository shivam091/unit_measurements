# Unit Measurements

A library that encapsulate measurements and their units in Ruby.

[![Ruby](https://github.com/shivam091/unit_measurements/actions/workflows/main.yml/badge.svg)](https://github.com/shivam091/unit_measurements/actions/workflows/main.yml)
[![Gem Version](https://badge.fury.io/rb/unit_measurements.svg)](https://badge.fury.io/rb/unit_measurements)
[![Gem Downloads](https://img.shields.io/gem/dt/unit_measurements.svg)](http://rubygems.org/gems/unit_measurements)
[![Maintainability](https://api.codeclimate.com/v1/badges/b8aec9bffa356d108784/maintainability)](https://codeclimate.com/github/shivam091/unit_measurements/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/b8aec9bffa356d108784/test_coverage)](https://codeclimate.com/github/shivam091/unit_measurements/test_coverage)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/shivam091/unit_measurements/blob/main/LICENSE.md)

**Harshal V. Ladhe, Master of Computer Science.**

## Introduction

Many technical applications need use of specialized calculations at some point of time.
Frequently, these calculations require unit conversions to ensure accurate
results. Needless to say, this is a pain to properly keep track of, and is prone
to numerous errors.

## Solution

The `unit_measurements` gem is designed to simplify the handling of units for scientific calculations.

## Advantages

1. It provides easy conversion between units.
2. It is lightweight and easily extensible to include other units and conversions.
2. It has built in support for various [unit groups](units.md).
4. It can convert `complex`, `fractional`, `mixed fractional`, `scientific` numbers, and `ratios`.

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

The **`UnitMeasurements::Measurement`** class is responsible for conversion of quantity to various compatible units
but it can't be directly initialized or converted to other units, but rather it is done with the unit group classes
viz., `UnitMeasurements::Weight`, `UnitMeasurements::Length`, etc.

**Initialize a measurement:**

```ruby
UnitMeasurements::Length.new(1, :km)
#=> 1 km
```

**Converting to other units:**

This gem allows you to convert among units of same unit group. You can convert measurement to other unit using `#convert_to`
(aliased as `#to`, `#in`, and `#as`) or `#convert_to!` (aliased as `#to!`, `#in!`, and `#as!`) methods.

You can use `#convert_to` as:

```ruby
UnitMeasurements::Length.new(1, :km).convert_to(:m)
#=> 1000.0 m
```

If you want to modify measurement object itself, you can use `#convert_to!` method as:

```ruby
UnitMeasurements::Length.new(1, :km).convert_to!(:m)
#=> 1000.0 m
```

You can also chain call of `#convert_to` and `#convert_to!` methods as:

```ruby
UnitMeasurements::Length.new(100, :m).convert_to(:ft).convert_to!(:in)
#=> 3937.00787401574071916010498688 in
```

**Parse string without having to split out the quantity and source unit:**

```ruby
UnitMeasurements::Length.parse("1 km")
#=> 1.0 km
```

**Parse string that mentions quantity, source unit, and target unit:**

A source unit can be separated from the target unit using the `in`, `to`, or `as` operators.

```ruby
UnitMeasurements::Length.parse("1 km to m")
#=> 1000.0 m
```

**Parse scientific numbers, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Length.new(BigDecimal(2), :km).convert_to(:m)
#=> 20000.0 m
UnitMeasurements::Length.new("2e+2", :km).convert_to(:m)
#=> 200000.0 m
UnitMeasurements::Length.parse("2e² km").convert_to(:m)
#=> 200000.0 m
UnitMeasurements::Length.parse("2e+2 km to m")
#=> 200000.0 m
UnitMeasurements::Length.parse("2e⁻² km to m")
#=> 20.0 m
```

Supported special characters for exponents are `⁰`, `¹`, `²`, `³`, `⁴`, `⁵`, `⁶`, `⁷`, `⁸`, `⁹`, `⁺`, `⁻`.

**Parse complex numbers, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Length.new(Complex(2, 3), :km).convert_to(:m)
#=> 2000.0+3000.0i m
UnitMeasurements::Length.new("2+3i", :km).convert_to(:m)
#=> 2000.0+3000.0i m
UnitMeasurements::Length.parse("2+3i km").convert_to(:m)
#=> 2000.0+3000.0i m
UnitMeasurements::Length.parse("2+3i km to m")
#=> 2000.0+3000.0i m
```

**Parse fractional/mixed fractional numbers, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Length.new(Rational(2, 3), :km).convert_to(:m)
#=> 666.666666666667 m
UnitMeasurements::Length.new("2/3", :km).convert_to(:m)
#=> 666.666666666667 m
UnitMeasurements::Length.new("½", :km).convert_to(:m)
#=> 500.0 m
UnitMeasurements::Length.parse("2 ½ km").convert_to(:m)
#=> 2500.0 m
UnitMeasurements::Length.parse("2/3 km").convert_to(:m)
#=> 666.666666666667 m
UnitMeasurements::Length.parse("2/3 km to m")
#=> 666.666666666667 m
UnitMeasurements::Length.parse("2 1/2 km").convert_to(:m)
#=> 2500.0 m
UnitMeasurements::Length.parse("2 ½ km to m")
#=> 2500.0 m
```

Supported special characters for fractional notations are `¼`, `½`, `¾`, `⅓`, `⅔`, `⅕`, `⅖`, `⅗`, `⅘`, `⅙`, `⅚`, `⅐`, `⅛`, `⅜`, `⅝`, `⅞`, `⅑`, `⅒`, `↉`, `⁄`.

**Parse ratios, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Length.new("1:2", :km).convert_to(:m)
#=> 500.0 m
UnitMeasurements::Length.parse("1:2 km").convert_to(:m)
#=> 500.0 m
UnitMeasurements::Length.parse("1:2 km to m")
#=> 500.0 m
```

**Formatting measurement:**

If you want to format measurement to certain format, you can use `#format` method.
If format is not specified, it defaults to `"%.2<value>f %<unit>s"`.

```ruby
UnitMeasurements::Length.new(100, :m).to(:in).format
#=> "3937.01 in"
UnitMeasurements::Length.new(100, :m).to(:in).format("%.4<quantity>f %<unit>s")
#=> "3937.0079 in"
UnitMeasurements::Length.new(100, :m).to(:in).format("%.4<quantity>f")
#=> "3937.0079"
```

**Extract the unit and the quantity from measurement:**

```ruby
length = UnitMeasurements::Length.new(1, :km)
length.quantity
#=> 1
length.unit
#=> #<UnitMeasurements::Unit: km (kilometer, kilometers, kilometre, kilometres)>
```

**See primitive unit of the unit group:**

```ruby
UnitMeasurements::Length.primitive
#=> #<UnitMeasurements::Unit: m (meter, meters, metre, metres)>
```

**See all units of the unit group:**

```ruby
UnitMeasurements::Length.units
#=> [#<UnitMeasurements::Unit: m (meter, meters, metre, metres)>, ..., ...]
```

**See names of all valid units of the unit group:**

```ruby
UnitMeasurements::Length.unit_names
#=> ["m", "km", "mi", "ft", "in", "yd", ...]
```

**See all valid units of the unit group along with their aliases:**

```ruby
UnitMeasurements::Length.unit_names_with_aliases
#=> ["g", "meter", "metre", "meters", "metres", "km", "kilometer", "kilometre", "kilometers", "kilometres", "in", "inch", "inches", "yd", "yard", "yards", ...]
```

**Finding units within the unit group:**

You can use `#unit_for` or `#unit_for!` (aliased as `#[]`) to find units within
the unit group. `#unit_for!` method returns error if a unit is not present in the
unit group.

```ruby
UnitMeasurements::Length.unit_for(:m)
#=> #<UnitMeasurements::Unit: m (meter, meters, metre, metres)>
UnitMeasurements::Length.unit_for(:z)
#=> nil
UnitMeasurements::Length.unit_for!(:m)
#=> #<UnitMeasurements::Unit: m (meter, meters, metre, metres)>
UnitMeasurements::Length.unit_for!(:z)
#=> Invalid unit: 'z'. (UnitMeasurements::UnitError)
```

**Finding whether the unit is defined within the unit group:**

```ruby
UnitMeasurements::Length.defined?(:m)
#=> true
UnitMeasurements::Length.defined?(:metre)
#=> false
```

**Check if the unit is a valid unit or alias within the unit group:**

```ruby
UnitMeasurements::Length.unit_or_alias?(:m)
#=> true
UnitMeasurements::Length.unit_or_alias?(:metre)
#=> true
```

### Comparisons

You have ability to compare the measurements with the same or different units within the same unit group.
For example, comparing length with length will work, comparing a length with a area would fail.
Supported comparisons and methods are `==`, `!=`, `<`, `>`, `<=`, `>=`, `between?`, and `clamp`.

```ruby
UnitMeasurements::Length.new(1, "km") == UnitMeasurements::Length.new(1, :km)
#=> true
UnitMeasurements::Length.parse("1 km") <= UnitMeasurements::Length.parse("0.5 km")
#=> false
UnitMeasurements::Length.new(1, :ft).between?(UnitMeasurements::Length.new(12, :in), UnitMeasurements::Length.new(24, :in))
#=> true
```

### Arithmetic

You have ability to perform arithmetic operations on measurements with the same or
different units within a same unit group. You can perform arithmetic operations on
measurement by either other measurement with compatible unit or number.
In cases of different units, the left hand side takes precedence:

**Methods:**
1. `#+` - Adds the other measurement quantity or number to the measurement.
2. `#-` - Subtracts the other measurement quantity or number from the measurement.
3. `#*` - Multiplies the measurement quantity by other measurement quantity or number.
4. `#/` - Divides the measurement quantity by other measurement quantity or number.

```ruby
UnitMeasurements::Length.new(1, :km) + UnitMeasurements::Length.new(1, :m)
#=> 1.001 km
UnitMeasurements::Length.new(2, :km) - 1
#=> 1 km
UnitMeasurements::Length.new(2, :km) * 2
#=> 4 km
UnitMeasurements::Length.new(4, :km) / UnitMeasurements::Length.new(2, :km)
#=> 2 km
```

### Math

You can perform mathematical operations on the measurements.

**Methods:**
1. `#round` - Rounds quantity of the measurement. If `ndigits` is not specified, quantity is rounded to `Integer`.
2. `#abs` - Returns absolute value of the measurement quantity.
3. `#floor` - Rounds quantity of the measurement to next lower integer.
4. `#ceil` - Rounds quantity of the measurement to next higher integer.

```ruby
UnitMeasurements::Length.new(1, :m).to(:in).round(4)
#=> 39.3701 in
UnitMeasurements::Length.new(-17.625, :m).abs
#=> 17.625 m
UnitMeasurements::Length.new(17.625, :m).floor
#=> 17 m
UnitMeasurements::Length.new(17.625, :m).ceil
#=> 18 m
```

### Conversions

You can convert measurement quantity directly to other numeric types viz.
`Integer`, `BigDecimal`, `Rational`, `Complex`, and `Float`.

```ruby
UnitMeasurements::Length.new(2.25567, :km).to_i
#=> 2 km
UnitMeasurements::Length.new(2.25567, :km).to_f
#=> 2.25567 km
UnitMeasurements::Length.new(2.25567, :km).to_r
#=> 225567/100000 km
UnitMeasurements::Length.new(2.25567, :km).to_d
#=> 2.25567 km
UnitMeasurements::Length.new(2.25567, :km).to_c
#=> 2.25567+0i km
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
```

or

```ruby
gem "unit_measurements", require: ["unit_measurements/base", "unit_measurements/unit_groups/length"]
```

### Building new unit groups

This library provides simpler way to build your own unit groups. To build new unit group,
use `UnitMeasurements.build` method in order to define units within it:

For convenience, you also have ability to group units by the unit system using `system` method
and set primitive unit for each unit group using `primitive` method.

```ruby
UnitMeasurements::Time = UnitMeasurements.build do
  # Set primitive unit for the unit group.
  primitive :s

  # Group units by the unit system.
  system :metric do
    # Add a SI unit to the unit group.
    si_unit :s, aliases: [:second, :seconds]

    # Add units to the group, along with their conversion multipliers.
    unit :min, value: "60 s", aliases: [:hour, :hours]

    # You can also specify unit value as an array.
    unit :h, value: [60, :min], aliases: [:day, :days]
  end
end
```

All units allow aliases, as long as they are unique. Unit name can be used to
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
