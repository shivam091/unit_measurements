## [5.10.0](https://github.com/shivam091/unit_measurements/compare/v5.9.0...v5.10.0) - 2023-11-

### What's new

- Added new method `#to_fs` to format the measurement.
- Aliased arithmetic method `#**` to `#pow` and `#^`.
- Aliased arithmetic method `#-@` to `#inverse` and `#negate`.
- Added `UnitMeasurements::BlankQuantityError` error if tried to initialize the `Measurement` with a blank quantity.
- Added `UnitMeasurements::BlankUnitError` error if tried to initialize the `Measurement` with a blank unit.

### What's deprecated

- `#format` method in favour of `#to_fs`.

----------

## [5.9.0](https://github.com/shivam091/unit_measurements/compare/v5.8.0...v5.9.0) - 2023-11-08

### What's new

- Added new units of `force`.
- Added new units of `torque`.
- Added new units of `energy`.

----------

## [5.8.0](https://github.com/shivam091/unit_measurements/compare/v5.7.0...v5.8.0) - 2023-11-06

### What's new

- Added new units of `pressure`.
- Added new units of `power`.

----------

## [5.7.0](https://github.com/shivam091/unit_measurements/compare/v5.6.1...v5.7.0) - 2023-11-04

### What's new

- Added new units `λ`, `cd`, and `cd-ft` in `volume`.
- Added new units `tn`, `LT`, `hyl`, `cwt`, and `cwt (US)` in `weight`.
- Added new units `μ`, `cb`, `b.c.`, `S`, `ls`, `lmin`, `lh`, `ld`, `lw`, `lm`, `ly` in `length`.
- Added new units `tr`, `cyc`, `sign`, `octant`, `sextant`, and `quadrant` in `plane angle`.

### What's removed

- Removed wrong plural aliases from units of `frequency` and `magnetic induction`.

----------

## [5.6.1](https://github.com/shivam091/unit_measurements/compare/v5.6.0...v5.6.1) - 2023-11-03

### What's removed

- Removed uneeded aliases from units.
- Removed test cases of all unit conversions other than primitive unit.

----------

## [5.6.0](https://github.com/shivam091/unit_measurements/compare/v5.5.0...v5.6.0) - 2023-10-31

### What's new

- Added new units `ftm³`, `pk`, `gt`, `bsh`, `min`, `bkt`, `hhd`, `fls`, `dspn`, `fldr`, `bdft`, `ac⋅ft`, `ac⋅in` in volume.
- Added new units `oz/ft³`, `oz/in³`, `oz/gal`, `lb/ft³`, `lb/in³`, `lb/gal`, `slug/ft³`, `slug/in³` in density.

----------

## [5.5.0](https://github.com/shivam091/unit_measurements/compare/v5.4.1...v5.5.0) - 2023-10-29

### What's new

- Added new units `ipm/s`, `iph/s`, `mi/s²`, `mpm/s`, `mph/s`, `fpm/s`, `fph/s`, `Gal` in acceleration.
- Added new units `mi/s`, `mi/min`, `mi/h`, and `fur/ftn` in velocity.
- Added new units `lnk²`, `ac`, `ft²`, `mi²`, `ch²`, `bd`, and `ro` in area.

### What's updated

- Changed unit name `rod²` to `rd²` along with its aliases.

----------

## [5.4.1](https://github.com/shivam091/unit_measurements/compare/v5.4.0...v5.4.1) - 2023-10-28

### What's updated

- Updated unit systems and aliases of unit groups.
- Added alternative names for unit groups in unit reference file.

----------

## [5.4.0](https://github.com/shivam091/unit_measurements/compare/v5.3.0...v5.4.0) - 2023-10-27

### What's new

- Added new units `Å`, `lnk`, `lea`, `hh`, `nl`, and `sft` in length.
- Added new units `N`, `s`, `drt`, and `lbt` in weight.

----------

## [5.3.0](https://github.com/shivam091/unit_measurements/compare/v5.2.0...v5.3.0) - 2023-10-24

### What's new

- Added ability set globally configurable options for **`unit_measurements`**.

### What's improved

- Code coverage improvements.

----------

## [5.2.0](https://github.com/shivam091/unit_measurements/compare/v5.1.1...v5.2.0) - 2023-10-22

### What's new

- Added ability to set name of the cache file for the unit group.
- Added support for caching conversion factors between units of the unit group.

----------

## [5.1.1](https://github.com/shivam091/unit_measurements/compare/v5.1.0...v5.1.1) - 2023-10-20

### What's updated

- Updated readme and documentation.
- Updated documentation hosting link to `https://shivam091.github.io/unit_measurements`.

----------

## [5.1.0](https://github.com/shivam091/unit_measurements/compare/v5.0.0...v5.1.0) - 2023-10-19

### What's new

- Added new methods (`**`, `-@`, `nonzero?`, `zero?`, `positive?`, `negative?`,
  `finite?`, and `infinite?`) to perform arithmetic operations.
- Added new alias `scale` for `**` arithmetic method.

### What's updated

- Updated readme and documentation.
- Updated documentation hosting link to `https://rubydoc.info/gems/unit_measurements`.

----------

## [5.0.0](https://github.com/shivam091/unit_measurements/compare/v4.12.0...v5.0.0) - 2023-10-18

### What's new

- Added support to add binary SI prefixes for the unit.
- Added support to convert the measurement to a `primitive` unit of the unit group.
- Added methods `UnitGroup#units_for` and `UnitGroup#units_for!` to find units within
  the specified unit system.

----------

## [4.12.0](https://github.com/shivam091/unit_measurements/compare/v4.11.0...v4.12.0) - 2023-10-16

### What's new

- Added new units in `area` (are, barn, hectare, acre, square chain, square furlong, square rod) unit group.
- Added new units in `volume` (cup, quart, gill, pint, gallon, barrel, teaspoon, tablespoon, fluid ounce) unit group.

----------

## [4.11.0](https://github.com/shivam091/unit_measurements/compare/v4.10.0...v4.11.0) - 2023-10-15

### What's new

- Added new units in `length` (ch, th, ftm, fur, nmi, rod, au, pc) unit group.
- Added new units in `weight` (ct, Da, lb, st, oz, gr, ozt, dwt, dr, slug) unit group.

----------

## [4.10.0](https://github.com/shivam091/unit_measurements/compare/v4.9.0...v4.10.0) - 2023-10-14

### What's new

- Added documentation for all modules, classes, and methods.
- Updated readme and added workflow for publishing documentation using `yardoc`.

----------

## [4.9.0](https://github.com/shivam091/unit_measurements/compare/v4.8.0...v4.9.0) - 2023-10-13

### What's new

- Added unit group for `information entropy` units.

----------

## [4.8.0](https://github.com/shivam091/unit_measurements/compare/v4.7.0...v4.8.0) - 2023-10-12

### What's new

- Added unit group for `radiation exposure` units.
- Added unit group for `radiation absorbed dose` units.
- Added unit group for `radiation equivalent dose` units.

----------

## [4.7.0](https://github.com/shivam091/unit_measurements/compare/v4.6.0...v4.7.0) - 2023-10-11

### What's new

- Added unit group for `magnetomotive force` units.
- Added unit group for `radioactivity` units.

----------

## [4.6.0](https://github.com/shivam091/unit_measurements/compare/v4.5.0...v4.6.0) - 2023-10-10

### What's new

- Added unit group for `dynamic viscosity` units.
- Added unit group for `kinetic viscosity` units.

----------

## [4.5.0](https://github.com/shivam091/unit_measurements/compare/v4.4.0...v4.5.0) - 2023-10-09

### What's new

- Added unit group for `energy` units.
- Added unit group for `power` units.

----------

## [4.4.0](https://github.com/shivam091/unit_measurements/compare/v4.3.0...v4.4.0) - 2023-10-08

### What's new

- Added unit group for `luminance` units.
- Added unit group for `frequency` units.

----------

## [4.3.0](https://github.com/shivam091/unit_measurements/compare/v4.2.0...v4.3.0) - 2023-10-07

### What's new

- Added unit group for `luminous flux` units.
- Added unit group for `illuminance` units.

----------

## [4.2.0](https://github.com/shivam091/unit_measurements/compare/v4.1.0...v4.2.0) - 2023-10-06

### What's new

- Added unit group for `pressure` units.
- Added unit group for `torque` units.

----------

## [4.1.0](https://github.com/shivam091/unit_measurements/compare/v4.0.0...v4.1.0) - 2023-10-05

### What's new

- Added unit group for `catalytic activity` units.
- Added unit group for `electric dipole moment` units.
- Added unit group for `electric quadrupole moment` units.

----------

## [4.0.0](https://github.com/shivam091/unit_measurements/compare/v3.8.0...v4.0.0) - 2023-10-04

### What's new

- Added support to set `primitive` unit for each unit group.
- Added support to set `system` in `Unit` metadata.
- Added `UnitMeasurements::PrimitiveUnitAlreadySetError` error if `primitive` unit is defined more than one time in the unit group.

### What's changed

- Renamed `Voltage` unit group class to `ElectricPotential`.
- Renamed `Conductance` unit group class to `ElectricConductance`.
- Renamed `Resistance` unit group class to `ElectricalResistance`.
- Renamed `Elastance` unit group class to `ElectricalElastance`.
- Renamed `Capacitance` unit group class to `ElectricalCapacitance`.
- Renamed `Inductance` unit group class to `ElectricalInductance`.

### What's removed

- Removed support to build `UnitSystem` instances for each system within the unit group.
- Removed support to set `primitive` unit for each unit system within the unit group.

----------

## [3.8.0](https://github.com/shivam091/unit_measurements/compare/v3.7.0...v3.8.0) - 2023-10-03

### What's new

- Added unit group for `magnetic field` units.
- Added unit group for `inductance` units.

----------

## [3.7.0](https://github.com/shivam091/unit_measurements/compare/v3.6.0...v3.7.0) - 2023-10-02

### What's new

- Added unit group for `magnetic flux` units.
- Added unit group for `magnetic induction` units

----------

## [3.6.0](https://github.com/shivam091/unit_measurements/compare/v3.5.0...v3.6.0) - 2023-10-01

### What's new

- Added unit group for `resistance` units.
- Added unit group for `conductance` units.

----------

## [3.5.0](https://github.com/shivam091/unit_measurements/compare/v3.4.1...v3.5.0) - 2023-09-30

### What's new

- Added unit group for `capacitance` units.
- Added unit group for `elastance` units.

----------

## [3.4.1](https://github.com/shivam091/unit_measurements/compare/v3.4.0...v3.4.1) - 2023-09-29

### What's changed

- Updated usage examples in readme.

### What's removed

- Removed overridden `Measurement.name` method.

----------

## [3.4.0](https://github.com/shivam091/unit_measurements/compare/v3.3.0...v3.4.0) - 2023-09-28

### What's new

- Added ability to group units by `unit system`.
- Added ability to set `primitive` unit for each unit system.
- Added method `primitive?` to check whether the unit is primitive or not.
- Added method `system_for` to find unit system by name.

### What's changed

- Grouped units in system and set primitive unit for those systems.

----------

## [3.3.0](https://github.com/shivam091/unit_measurements/compare/v3.2.0...v3.3.0) - 2023-09-28

### What's new

- Added unit group for `electric charge` units.
- Added unit group for `angular velocity` units.

----------

## [3.2.0](https://github.com/shivam091/unit_measurements/compare/v3.1.0...v3.2.0) - 2023-09-27

### What's new

- Added unit group for `acceleration` units.
- Added unit group for `angular acceleration` units.

----------

## [3.1.0](https://github.com/shivam091/unit_measurements/compare/v3.0.0...v3.1.0) - 2023-09-26

### What's new

- Added unit group for `voltage` units.
- Added unit group for `velocity` units.

----------

## [3.0.0](https://github.com/shivam091/unit_measurements/compare/v2.6.2...v3.0.0) - 2023-09-25

### What's new

- Added method `Measurement.name` to get humanized name of the unit group.
- Raised `BaseError` in `Measurement.unit_group`.
- Added aliases `in`, `as`, `in!`, `as` for `convert_to` and `convert_to!` methods.

### What's changed

- Moved LICENSE to markdown file.
- Replaced `$LOAD_PATH` by shorthand `$:`
- Replaced `base` method by `unit`.

----------

## [2.6.2](https://github.com/shivam091/unit_measurements/compare/v2.6.1...v2.6.2) - 2023-09-25

### What's changed

- Replaced `String` by `Symbol` in unit names and symbols.

----------

## [2.6.1](https://github.com/shivam091/unit_measurements/compare/v2.6.0...v2.6.1) - 2023-09-24

### What's changed

- Replaced `Symbol` by `String` in unit names and symbols.

----------

## [2.6.0](https://github.com/shivam091/unit_measurements/compare/v2.5.0...v2.6.0) - 2023-09-24

### What's new

- Added unit group for `force` units.
- Added unit group for `solid angle` units.

----------

## [2.5.0](https://github.com/shivam091/unit_measurements/compare/v2.4.0...v2.5.0) - 2023-09-23

### What's new

- Added unit group for `sound level` units.
- Added unit group for `plane angle` units.

----------

## [2.4.0](https://github.com/shivam091/unit_measurements/compare/v2.3.0...v2.4.0) - 2023-09-23

### What's new

- Added unit group for `density` units.
- Added unit group for `quantity` units.

----------

## [2.3.0](https://github.com/shivam091/unit_measurements/compare/v2.2.0...v2.3.0) - 2023-09-22

### What's new

- Added unit group for `area` units.
- Added unit group for `volume` units.

----------

## [2.2.0](https://github.com/shivam091/unit_measurements/compare/v2.1.0...v2.2.0) - 2023-09-21

### What's new

- Added unit group for `electric current` units.
- Added unit group for `luminous intensity` units.
- Added unit group for `temperature` units.

----------

## [2.1.0](https://github.com/shivam091/unit_measurements/compare/v1.7.0...v2.1.0) - 2023-09-20

### What's new

- Added unit group for `time` units.
- Added unit group for `amount of substance` units.

----------

## [1.7.0](https://github.com/shivam091/unit_measurements/compare/v1.6.0...v1.7.0) - 2023-09-20

### What's new

- Added support to convert the measurements to other numeric types viz.,
  `Integer`, `BigDecimal`, `Rational`, `Complex`, and `Float`.

----------

## [1.6.0](https://github.com/shivam091/unit_measurements/compare/v1.5.1...v1.6.0) - 2023-09-19

### What's new

- Added support to perform mathematical operations on the measurements.

----------

## [1.5.1](https://github.com/shivam091/unit_measurements/compare/v1.5.0...v1.5.1) - 2023-09-18

### What's updated

- Added extra blank line between method code and last code statement (considered as return).

----------

## [1.5.0](https://github.com/shivam091/unit_measurements/compare/v1.4.0...v1.5.0) - 2023-09-18

### What's fixed

- Fixed precision in `Measurement#quantity` method.

----------

## [1.4.0](https://github.com/shivam091/unit_measurements/compare/v1.3.0...v1.4.0) - 2023-09-17

### What's new

- Added ability to perform `arithmetic` operations of measurements.

----------

## [1.3.0](https://github.com/shivam091/unit_measurements/compare/v1.2.0...v1.3.0) - 2023-09-16

### What's new

- Added ability to compare two measurements of the same unit group.

----------

## [1.2.0](https://github.com/shivam091/unit_measurements/compare/v1.1.0...v1.2.0) - 2023-09-15

### What's new

- Added support to specify unit value as an `array` of number and unit.

----------

## [1.1.0](https://github.com/shivam091/unit_measurements/compare/v1.0.0...v1.1.0) - 2023-09-14

### What's new

- Added `#format` method to format quantity of the measurement.

----------

## [1.0.0](https://github.com/shivam091/unit_measurements/compare/v0.1.0...v1.0.0) - 2023-09-14

### What's new

- Added support to build unit groups.
- Added unit group for `length` units.
- Added unit group for `weight` units.
- Added support to build `si` units.
- Added support to parse `Complex`, `Rational`, `Scientific` numbers, and `ratios`.
- Added support to convert quantity between two units using `#convert_to`, `#convert_to!`, and `#parse` methods.
- Added normalizer to normalize special characters used in numbers.

----------

## 0.1.0 - 2023-09-13

### Initial release

-----------

### Unreleased
