# Unit Measurements

A library that encapsulate measurements and their units in Ruby.

[![Ruby](https://github.com/shivam091/unit_measurements/actions/workflows/main.yml/badge.svg)](https://github.com/shivam091/unit_measurements/actions/workflows/main.yml)
[![Gem Version](https://badge.fury.io/rb/unit_measurements.svg)](https://badge.fury.io/rb/unit_measurements)
[![Gem Downloads](https://img.shields.io/gem/dt/unit_measurements.svg)](http://rubygems.org/gems/unit_measurements)
[![Maintainability](https://api.codeclimate.com/v1/badges/b8aec9bffa356d108784/maintainability)](https://codeclimate.com/github/shivam091/unit_measurements/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/b8aec9bffa356d108784/test_coverage)](https://codeclimate.com/github/shivam091/unit_measurements/test_coverage)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/shivam091/unit_measurements/blob/main/LICENSE.md)

[Harshal V. Ladhe, Master of Computer Science.](https://shivam091.github.io)

## Introduction

Many technical applications need use of specialized calculations at some point of time.
Frequently, these calculations require unit conversions to ensure accurate
results. Needless to say, this is a pain to properly keep track of, and is prone
to numerous errors.

## Solution

The `unit_measurements` gem is designed to simplify the handling of units for scientific calculations.

## Features

1. Provides easy conversion between units.
2. Lightweight and easily extensible to include other units and conversions.
3. Built in support for various [unit groups](https://github.com/shivam091/unit_measurements/blob/main/units.md).
4. Ability to parse strings representing complex, fractional, mixed fractional, scientific numbers, and ratios.
5. Well organized and descriptive documentation published [here](https://shivam091.github.io/unit_measurements).
6. Supports caching of conversion factors between different units of the unit group.

## Disclaimer

_The unit conversions provided here are for reference and general informational
purposes. While we aim for accuracy, we cannot guarantee precision in all scenarios.
Users are advised to cross-verify conversions for their specific use cases._

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
UnitMeasurements::Length.new(1, "km")
#=> 1 km
```

**Converting to other units:**

This gem allows you to convert among units of same unit group. You can convert measurement to other unit using `#convert_to`
(aliased as `#to`, `#in`, and `#as`) or `#convert_to!` (aliased as `#to!`, `#in!`, and `#as!`) methods.

These methods provide `use_cache` parameter which can be used to indicate whether the caching of conversion factors should happen.

You can use `#convert_to` as:

```ruby
UnitMeasurements::Length.new(1, "km").convert_to("m")
#=> 1000.0 m
```

If you want to modify measurement object itself, you can use `#convert_to!` method as:

```ruby
UnitMeasurements::Length.new(1, "km").convert_to!("m")
#=> 1000.0 m
```

You can convert the measurement directly to the `primitive` unit of the unit group as:

```ruby
UnitMeasurements::Length.new(1, "cm").convert_to("primitive")
#=> 0.01 m
```

You can also chain call of `#convert_to` and `#convert_to!` methods as:

```ruby
UnitMeasurements::Length.new(100, "m").convert_to("ft").convert_to!("in")
#=> 3937.00787401574071916010498688 in
```

**Parse string without having to split out the quantity and source unit:**

This method provides `use_cache` parameter which can be used to indicate whether the caching of conversion factors should happen.

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
UnitMeasurements::Length.parse("2e+2 km").convert_to("m")
#=> 200000.0 m
UnitMeasurements::Length.parse("2e+2 km to m")
#=> 200000.0 m
```
You can check supported special characters for exponents
[here](https://shivam091.github.io/unit_measurements/UnitMeasurements/Normalizer.html).

**Parse complex numbers, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Length.parse("2+3i km").convert_to("m")
#=> 2000.0+3000.0i m
UnitMeasurements::Length.parse("2+3i km to m")
#=> 2000.0+3000.0i m
```

**Parse fractional/mixed fractional numbers, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Length.parse("2 ½ km").convert_to("m")
#=> 2500.0 m
UnitMeasurements::Length.parse("2/3 km to m")
#=> 666.666666666667 m
```

You can check supported special characters for fractional notations
[here](https://shivam091.github.io/unit_measurements/UnitMeasurements/Normalizer.html).

**Parse ratios, source unit, and (or) target unit:**

```ruby
UnitMeasurements::Length.parse("1:2 km").convert_to("m")
#=> 500.0 m
UnitMeasurements::Length.parse("1:2 km to m")
#=> 500.0 m
```

**Formatting measurement:**

If you want to format measurement to certain format, you can use `#format` method.
If format is not specified, it defaults to `"%.2<value>f %<unit>s"`.

```ruby
UnitMeasurements::Length.new(100, "m").to("in").format("%.4<quantity>f %<unit>s")
#=> "3937.0079 in"
```

You can check more about formatting along with their examples
[here](https://shivam091.github.io/unit_measurements/UnitMeasurements/Formatter.html).

**Extract the unit and the quantity from measurement:**

```ruby
length = UnitMeasurements::Length.new(1, "km")
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
#=> ["ft", "in", "m", "mi", "yd"]
```

**See all valid units of the unit group along with their aliases:**

```ruby
UnitMeasurements::Length.unit_names_with_aliases
#=> ["\"", "'", "feet", "foot", "ft", "in", "inch", "inches", "m", "meter", "meters", "metre", "metres", "mi", "mile", "miles", "yard", "yards", "yd"]
```

**See list of units within the unit system:**

You can use `#units_for` or `#units_for!` methods to find units within the unit system.
`#units_for!` method returns an error if there are no units associated with specified
unit system.

```ruby
UnitMeasurements::Length.units_for("metric")
#=> [#<UnitMeasurements::Unit: m (meter, meters, metre, metres)>, ...]
```

**Finding units within the unit group:**

You can use `#unit_for` or `#unit_for!` (aliased as `#[]`) methods to find units
within the unit group. `#unit_for!` method returns an error if a unit is not present
in the unit group.

```ruby
UnitMeasurements::Length.unit_for("m")
#=> #<UnitMeasurements::Unit: m (meter, meters, metre, metres)>
UnitMeasurements::Length.unit_for("z")
#=> nil
UnitMeasurements::Length.unit_for!("z")
#=> Invalid unit: 'z'. (UnitMeasurements::UnitError)
```

**Finding whether the unit is defined within the unit group:**

```ruby
UnitMeasurements::Length.defined?("m")
#=> true
UnitMeasurements::Length.defined?("metre")
#=> false
```

**Check if the unit is a valid unit or alias within the unit group:**

```ruby
UnitMeasurements::Length.unit_or_alias?("m")
#=> true
UnitMeasurements::Length.unit_or_alias?("metre")
#=> true
```

**Clear cached data for the unit group:**

```ruby
UnitMeasurements::Length.clear_cache
```

### Comparisons

You have ability to compare the measurements with the same or different units within the same unit group.
For example, comparing length with length will work, comparing a length with a area would fail.

```ruby
UnitMeasurements::Length.parse("1 km") != UnitMeasurements::Length.parse("1 m")
#=> true
```

You can check supported comparisons along with their examples
[here](https://shivam091.github.io/unit_measurements/UnitMeasurements/Comparison.html).

### Arithmetic

You have ability to perform arithmetic operations on measurements with the same or
different units within a same unit group. You can perform arithmetic operations on
measurement by either other measurement with compatible unit or numeric value.
In cases of different units, the left hand side takes precedence.

```ruby
UnitMeasurements::Length.new(1, "km") + UnitMeasurements::Length.new(1, "m")
#=> 1.001 km
UnitMeasurements::Length.new(2, "km") * 2+2i
#=> 4+2i km
```

You can check supported arithmetic operations along with their examples
[here](https://shivam091.github.io/unit_measurements/UnitMeasurements/Arithmetic.html).

### Math

You can perform mathematical functions on the measurements.

```ruby
UnitMeasurements::Length.new(17.625, "m").round
#   => 18 m
```

You can check supported mathematical functions along with their examples
[here](https://shivam091.github.io/unit_measurements/UnitMeasurements/Math.html).

### Conversions

You can convert measurement quantity directly to other numeric types viz.
`Integer`, `BigDecimal`, `Rational`, `Complex`, and `Float`.

```ruby
UnitMeasurements::Length.new(2.25567, "km").to_i
#=> 2 km
```

You can check more about them along with their examples
[here](https://shivam091.github.io/unit_measurements/UnitMeasurements/Conversion.html).

## Units

The **`UnitMeasurements::Unit`** class is used to represent the units for a measurement.

### SI prefixed units

Support for SI prefixed units is provided through the `si_unit` method. Units
declared this way automatically support all decimal SI prefixes. This method takes
an optional `add_binary_prefixes` parameter, which can be set to `true` if the
unit supports binary SI prefixes in addition to decimal SI prefixes.

#### Decimal SI prefixes

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

#### Binary SI prefixes

| Multiplying Factor                | SI Prefix | Scientific Notation |
| --------------------------------- | --------- | ------------------- |
| 1 024                             | kibi (Ki) | 2^10                |
| 1 048 576                         | mebi (Mi) | 2^20                |
| 1 073 741 824                     | gibi (Gi) | 2^30                |
| 1 099 511 627 776                 | tebi (Ti) | 2^40                |
| 1 125 899 906 842 624             | pebi (Pi) | 2^50                |
| 1 152 921 504 606 846 976         | exbi (Ei) | 2^60                |
| 1 180 591 620 717 411 303 424     | zebi (Zi) | 2^70                |
| 1 208 925 819 614 629 174 706 176 | yobi (Yi) | 2^80                |

### Bundled units

There are tons of units that are bundled in `unit_measurements`. You can check them out
[here](https://github.com/shivam091/unit_measurements/blob/main/units.md).

### Specifing units

By default, `unit_measurements` includes all unit groups automatically when you require the gem using:

```ruby
require "unit_measurements"
```

**You can skip these unit groups and only [build your own unit groups](#building-new-unit-groups) by doing:**

```ruby
gem "unit_measurements", require: "unit_measurements/base"
```

**You can also use unit groups in your application as per your need as:**

```ruby
gem "unit_measurements", require: ["unit_measurements/base", "unit_measurements/unit_groups/length"]
```

### Building new unit groups

This library provides a simpler way to define your own unit groups. Use the
`UnitMeasurements.build` method to define units within it. You can also group
units by the unit system using the `system` method and set the primitive unit for
 each unit group using the `primitive` method.

```ruby
UnitMeasurements::Time = UnitMeasurements.build do
  # Set primitive unit for the unit group (optional).
  primitive "s"

  # Group units by the unit system (optional).
  system :metric do
    # This will add unit `m` along with all decimal SI prefixes.
    si_unit "s", aliases: ["second", "seconds"]

    # This will add unit `B` along with all binary & decimal SI prefixes.
    si_unit "B", aliases: ["byte", "bytes"], add_binary_prefixes: true

    # Add units to the group, along with their conversion multipliers.
    unit "min", value: "60 s", aliases: ["hour", "hours"]

    # You can also specify unit value as an array.
    unit "h", value: [60, "min"], aliases: ["day", "days"]
  end

  # Sets the name of the cache file (optional).
  cache "time_cache.json"
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

Copyright 2023 [Harshal V. LADHE]((https://shivam091.github.io)), Released under the [MIT License](http://opensource.org/licenses/MIT).
