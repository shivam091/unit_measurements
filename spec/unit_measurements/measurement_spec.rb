# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/measurement_spec.rb

RSpec.describe UnitMeasurements::Measurement do
  let(:m) { UnitMeasurements::Length.unit_group.unit_for("m") }
  let(:cm) { UnitMeasurements::Length.unit_group.unit_for("cm") }

  let(:cache) { UnitMeasurements::Cache.new(UnitMeasurements::Length) }

  let(:base_length) { UnitMeasurements::Length.new(1, "m") }
  let(:other_length) { UnitMeasurements::Length.new(100, "cm") }

  describe "#initialize" do
    it "raises an error for blank quantity" do
      expect { UnitMeasurements::Length.new("", "m") }.to raise_error(UnitMeasurements::BlankQuantityError, "Quantity cannot be blank.")
    end

    it "raises an error for blank unit" do
      expect { UnitMeasurements::Length.new(1, "") }.to raise_error(UnitMeasurements::BlankUnitError, "Unit cannot be blank.")
    end

    it "sets attributes correctly" do
      expect(base_length.quantity).to eq(1)
      expect(base_length.unit).to eq(m)
    end

    it "converts float quantity to BigDecimal" do
      measurement = UnitMeasurements::Length.new(10.5, "m")

      expect(measurement.quantity).to eq(BigDecimal("10.5"))
    end

    it "converts integer quantity to Rational" do
      measurement = UnitMeasurements::Length.new(10, "m")

      expect(measurement.quantity).to eq(Rational(10))
    end

    it "converts string quantity to BigDecimal" do
      measurement = UnitMeasurements::Length.new("10.5", "m")

      expect(measurement.quantity).to eq(BigDecimal("10.5"))
    end

    it "converts string quantity with fraction format to Rational" do
      measurement = UnitMeasurements::Length.new("1/2", "m")

      expect(measurement.quantity).to eq(Rational(1, 2))
    end
  end

  describe "#unit_group" do
    it "raises error if directly being subclassed" do
      expect {
        described_class.new(1, :g)
      }.to raise_error(UnitMeasurements::BaseError, "`Measurement` does not have a `unit_group` instance. You cannot directly use `Measurement`. Instead, build a new unit group by calling `UnitMeasurements.build`.")
    end
  end

  describe "#convert_to" do
    it "converts to the target unit" do
      converted_length = base_length.convert_to("cm")

      expect(converted_length.quantity).to eq(100)
      expect(converted_length.unit).to eq(cm)
    end

    it "returns self when target unit is the same as source unit" do
      converted_length = base_length.convert_to("m")

      expect(converted_length).to eq(base_length)
    end

    it "converts to a primitive unit" do
      converted_length = other_length.convert_to("primitive")

      expect(converted_length.quantity).to eq(1)
      expect(converted_length.unit).to eq(m)
    end

    it "fetches conversion factor from cache when use_cache is true" do
      cache.clear_cache
      cache.set("m", "cm", 0.00001)

      converted_length = base_length.convert_to("cm", use_cache: true)

      expect(converted_length.quantity).to eq(1e-5)
    end
  end

  describe "#convert_to!" do
    let(:measurement) { UnitMeasurements::Length.new(300, "cm") }

    it "modifies the measurement object" do
      expect(measurement.quantity).to eq(300)
      expect(measurement.unit).to eq(cm)

      measurement.convert_to!("m")

      expect(measurement.quantity).to eq(3)
      expect(measurement.unit).to eq(m)
    end
  end

  describe "#inspect" do
    it "returns a formatted string representation" do
      expect(base_length.inspect).to eq("1 m")
    end
  end

  describe "#to_s" do
    it "returns a string representation" do
      expect(base_length.to_s).to eq("1 m")
    end
  end

  describe ".parse" do
    context "when only quantity and source unit is provided" do
      it "parses scientific notations" do
        measurement = UnitMeasurements::Length.parse("4.3e12 m")
        expect(measurement.quantity).to eq(4.3e+12)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("4.3e12 m")
        expect(measurement.quantity).to eq(4.3e+12)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("4.3e12m")
        expect(measurement.quantity).to eq(4.3e+12)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.new("4.3e12", "m")
        expect(measurement.quantity).to eq(4.3e+12)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("4300000000000 m")
      end

      it "parses fractions" do
        measurement = UnitMeasurements::Length.parse("1/4 m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("1/4 m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("1/4m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.new("1/4", "m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("0.25 m")
      end

      it "parses fractions with special characters" do
        measurement = UnitMeasurements::Length.parse("⅜ m")
        expect(measurement.quantity).to eq(0.375)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("⅜ m")
        expect(measurement.quantity).to eq(0.375)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("⅜m")
        expect(measurement.quantity).to eq(0.375)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.new("⅜", "m")
        expect(measurement.quantity).to eq(0.375)
        expect(measurement.unit).to eq(m)
      end

      it "parses mixed fractions" do
        measurement = UnitMeasurements::Length.parse("3 2/5 m")
        expect(measurement.quantity).to eq(3.4)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.new("3 2/5", "m")
        expect(measurement.quantity).to eq(3.4)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("3.4 m")
      end

      it "parses mixed fractions with special characters" do
        measurement = UnitMeasurements::Length.parse("3⅜ m")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("3 ⅜ m")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("3⅜ m")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("3 ⅜ m")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("3⅜cm")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.new("3⅜", "cm")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(cm)
      end

      it "parses exponent symbols" do
        measurement = UnitMeasurements::Length.parse("10⁸ m")
        expect(measurement.quantity).to eq(108)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("10e³ m")
        expect(measurement.quantity).to eq(10000)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("10e⁺³ m")
        expect(measurement.quantity).to eq(10000)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("10e+³ m")
        expect(measurement.quantity).to eq(10000)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("10e⁻³ m")
        expect(measurement.quantity).to eq(0.01)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("10e-³ m")
        expect(measurement.quantity).to eq(0.01)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.new("10e-³", "m")
        expect(measurement.quantity).to eq(0.01)
        expect(measurement.unit).to eq(m)
      end

      it "parses decimals" do
        measurement = UnitMeasurements::Length.parse("2.1 m")
        expect(measurement.quantity).to eq(2.1)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("2.1 m")
        expect(measurement.quantity).to eq(2.1)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("2.1m")
        expect(measurement.quantity).to eq(2.1)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.new("2.1", "m")
        expect(measurement.quantity).to eq(2.1)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("2.1 m")
      end

      it "parses complexes" do
        measurement = UnitMeasurements::Length.parse("2.5+3.2i m")
        expect(measurement.quantity).to eq(Complex(2.5, 3.2))
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.new("2.5+3.2i", "m")
        expect(measurement.quantity).to eq(Complex(2.5, 3.2))
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("2.5+3.2i m")
      end

      it "parses integers" do
        measurement = UnitMeasurements::Length.parse("1 m")
        expect(measurement.quantity).to eq(1)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.new("1", "m")
        expect(measurement.quantity).to eq(1)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("1 m")
      end

      it "parses mathematical expressions" do
        measurement = UnitMeasurements::Length.parse("(1+2+(1+2*π)) m")
        expect(measurement.quantity).to eq(10.2831853071796)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("(2/π) m")
        expect(measurement.quantity).to eq(0.636619772367581)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("(1+2+(1+π)) m")
        expect(measurement.quantity).to eq(7.14159265358979)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("(1+2*π) m")
        expect(measurement.quantity).to eq(7.28318530717959)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("((2*π)+1) m")
        expect(measurement.quantity).to eq(7.28318530717959)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("(20/(2*π)) m")
        expect(measurement.quantity).to eq(3.18309886183791)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.parse("((2/π)+(1+π)) m")
        expect(measurement.quantity).to eq(4.77821242595737)
        expect(measurement.unit).to eq(m)
      end

      it "parses ratios" do
        measurement = UnitMeasurements::Length.parse("1:4 m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        measurement = UnitMeasurements::Length.new("1:4", "m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)
      end

      it "raises ParseError if called with empty string" do
        expect { UnitMeasurements::Length.parse("") }.to raise_error(UnitMeasurements::ParseError, "Unable to parse: ''.")
      end
    end

    context "when quantity, source unit, and target unit is provided" do
      it "parses scientific notations" do
        measurement = UnitMeasurements::Length.parse("4.3e12 m to cm")
        expect(measurement.quantity).to eq(4.3e+14)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("4.3e12 m to cm")
        expect(measurement.quantity).to eq(4.3e+14)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("4.3e12m to cm")
        expect(measurement.quantity).to eq(4.3e+14)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("430000000000000.0 cm")
      end

      it "parses fractions" do
        measurement = UnitMeasurements::Length.parse("1/4 m to cm")
        expect(measurement.quantity).to eq(25)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("1/4 m to cm")
        expect(measurement.quantity).to eq(25)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("1/4m to cm")
        expect(measurement.quantity).to eq(25)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("25.0 cm")
      end

      it "parses fractions with special characters" do
        measurement = UnitMeasurements::Length.parse("⅜ m to cm")
        expect(measurement.quantity).to eq(37.5)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("⅜ m to cm")
        expect(measurement.quantity).to eq(37.5)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("⅜m to cm")
        expect(measurement.quantity).to eq(37.5)
        expect(measurement.unit).to eq(cm)
      end

      it "parses mixed fractions" do
        measurement = UnitMeasurements::Length.parse("3 2/5 m to cm")
        expect(measurement.quantity).to eq(340)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("340.0 cm")
      end

      it "parses mixed fractions with special characters" do
        measurement = UnitMeasurements::Length.parse("3⅜ m to cm")
        expect(measurement.quantity).to eq(337.5)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("3 ⅜ m to cm")
        expect(measurement.quantity).to eq(337.5)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("3⅜ m to cm")
        expect(measurement.quantity).to eq(337.5)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("3 ⅜ m to cm")
        expect(measurement.quantity).to eq(337.5)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("3⅜m to cm")
        expect(measurement.quantity).to eq(337.5)
        expect(measurement.unit).to eq(cm)
      end

      it "parses exponent symbols" do
        measurement = UnitMeasurements::Length.parse("10⁸ m to cm")
        expect(measurement.quantity).to eq(10800)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("10e³ m to cm")
        expect(measurement.quantity).to eq(1000000)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("10e⁺³ m to cm")
        expect(measurement.quantity).to eq(1000000)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("10e+³ m to cm")
        expect(measurement.quantity).to eq(1000000)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("10e⁻³ m to cm")
        expect(measurement.quantity).to eq(1)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("10e-³ m to cm")
        expect(measurement.quantity).to eq(1)
        expect(measurement.unit).to eq(cm)
      end

      it "parses decimals" do
        measurement = UnitMeasurements::Length.parse("2.1 m to cm")
        expect(measurement.quantity).to eq(210)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("2.1 m to cm")
        expect(measurement.quantity).to eq(210)
        expect(measurement.unit).to eq(cm)

        measurement = UnitMeasurements::Length.parse("2.1m to cm")
        expect(measurement.quantity).to eq(210)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("210.0 cm")
      end

      it "parses complexes" do
        measurement = UnitMeasurements::Length.parse("2.5+3.2i m to cm")
        expect(measurement.quantity).to eq(Complex(250, 320))
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("250.0+320.0i cm")
      end

      it "parses integers" do
        measurement = UnitMeasurements::Length.parse("1 m to cm")
        expect(measurement.quantity).to eq(100)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("100.0 cm")
      end

      it "parses ratios" do
        measurement = UnitMeasurements::Length.parse("1:4 m to cm")
        expect(measurement.quantity).to eq(25)
        expect(measurement.unit).to eq(cm)
      end
    end
  end

  describe ".clear_cache" do
    it "clears the cache" do
      cache.set("km", "m", 0.001)

      cache.clear_cache
      UnitMeasurements::Length.clear_cache

      expect(cache.get("km", "m")).to be_nil
    end
  end

  describe "#ratio" do
    context "when the source unit and the target unit are strings" do
      it "calculates the ratio" do
        expect(UnitMeasurements::Length.ratio(:m, :cm)).to eq("0.01 m/cm")
      end
    end

    context "when the source unit and the target unit are instance of Unit" do
      it "calculates the ratio" do
        expect(UnitMeasurements::Length.ratio(m, cm)).to eq("0.01 m/cm")
      end
    end
  end
end
