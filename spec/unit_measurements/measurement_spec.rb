# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/measurement_spec.rb

RSpec.describe UnitMeasurements::Measurement do
  TEST_GROUP = UnitMeasurements.build do
    primitive "m"

    unit "m", aliases: ["meter", "meters"]
    unit "cm", value: 0.01, aliases: ["centimeter", "centimeters"]

    cache "test_group.json"
  end
  let(:base_length) { TEST_GROUP.new(1, :m) }
  let(:other_length) { TEST_GROUP.new(100, :cm) }
  let(:m) { TEST_GROUP.unit_group.unit_for(:m) }
  let(:cm) { TEST_GROUP.unit_group.unit_for(:cm) }
  let(:cache) { UnitMeasurements::Cache.new(TEST_GROUP) }

  describe "#initialize" do
    it "raises an error for blank quantity" do
      expect { TEST_GROUP.new(nil, :m) }.to raise_error(UnitMeasurements::BaseError, "Quantity cannot be blank.")
    end

    it "raises an error for blank unit" do
      expect { TEST_GROUP.new(1, nil) }.to raise_error(UnitMeasurements::BaseError, "Unit cannot be blank.")
    end

    it "sets attributes correctly" do
      expect(base_length.quantity).to eq(1)
      expect(base_length.unit).to eq(m)
    end

    it "converts float quantity to BigDecimal" do
      measurement = TEST_GROUP.new(10.5, :m)

      expect(measurement.quantity).to eq(BigDecimal("10.5"))
    end

    it "converts integer quantity to Rational" do
      measurement = TEST_GROUP.new(10, :m)

      expect(measurement.quantity).to eq(Rational(10))
    end

    it "converts string quantity to BigDecimal" do
      measurement = TEST_GROUP.new("10.5", :m)

      expect(measurement.quantity).to eq(BigDecimal("10.5"))
    end

    it "converts string quantity with fraction format to Rational" do
      measurement = TEST_GROUP.new("1/2", :m)

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
      converted_length = base_length.convert_to(:cm)

      expect(converted_length.quantity).to eq(100)
      expect(converted_length.unit).to eq(cm)
    end

    it "returns self when target unit is the same as source unit" do
      converted_length = base_length.convert_to(:m)

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
    let(:measurement) { TEST_GROUP.new(300, :cm) }

    it "modifies the measurement object" do
      expect(measurement.quantity).to eq(300)
      expect(measurement.unit).to eq(cm)

      measurement.convert_to!(:m)

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
        measurement = TEST_GROUP.parse("4.3e12 m")
        expect(measurement.quantity).to eq(4.3e12)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("4.3e12 m")
        expect(measurement.quantity).to eq(4.3e12)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("4.3e12m")
        expect(measurement.quantity).to eq(4.3e12)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.new("4.3e12", :m)
        expect(measurement.quantity).to eq(4.3e12)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("4300000000000.0 m")
      end

      it "parses fractions" do
        measurement = TEST_GROUP.parse("1/4 m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("1/4 m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("1/4m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.new("1/4", :m)
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("0.25 m")
      end

      it "parses fractions with special characters" do
        measurement = TEST_GROUP.parse("⅜ m")
        expect(measurement.quantity).to eq(0.375)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("⅜ m")
        expect(measurement.quantity).to eq(0.375)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("⅜m")
        expect(measurement.quantity).to eq(0.375)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.new("⅜", :m)
        expect(measurement.quantity).to eq(0.375)
        expect(measurement.unit).to eq(m)
      end

      it "parses mixed fractions" do
        measurement = TEST_GROUP.parse("3 2/5 m")
        expect(measurement.quantity).to eq(3.4)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.new("3 2/5", :m)
        expect(measurement.quantity).to eq(3.4)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("3.4 m")
      end

      it "parses mixed fractions with special characters" do
        measurement = TEST_GROUP.parse("3⅜ m")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("3 ⅜ m")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("3⅜ m")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("3 ⅜ m")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("3⅜cm")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.new("3⅜", :cm)
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(cm)
      end

      it "parses exponent symbols" do
        measurement = TEST_GROUP.parse("10⁸ m")
        expect(measurement.quantity).to eq(108)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("10e³ m")
        expect(measurement.quantity).to eq(10000)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("10e⁺³ m")
        expect(measurement.quantity).to eq(10000)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("10e+³ m")
        expect(measurement.quantity).to eq(10000)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("10e⁻³ m")
        expect(measurement.quantity).to eq(0.01)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("10e-³ m")
        expect(measurement.quantity).to eq(0.01)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.new("10e-³", :m)
        expect(measurement.quantity).to eq(0.01)
        expect(measurement.unit).to eq(m)
      end

      it "parses decimals" do
        measurement = TEST_GROUP.parse("2.1 m")
        expect(measurement.quantity).to eq(2.1)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("2.1 m")
        expect(measurement.quantity).to eq(2.1)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.parse("2.1m")
        expect(measurement.quantity).to eq(2.1)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.new("2.1", :m)
        expect(measurement.quantity).to eq(2.1)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("2.1 m")
      end

      it "parses complexes" do
        measurement = TEST_GROUP.parse("2.5+3.2i m")
        expect(measurement.quantity).to eq(Complex(2.5, 3.2))
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.new("2.5+3.2i", :m)
        expect(measurement.quantity).to eq(Complex(2.5, 3.2))
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("2.5+3.2i m")
      end

      it "parses integers" do
        measurement = TEST_GROUP.parse("1 m")
        expect(measurement.quantity).to eq(1)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.new("1", :m)
        expect(measurement.quantity).to eq(1)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("1.0 m")
      end

      it "parses ratios" do
        measurement = TEST_GROUP.parse("1:4 m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        measurement = TEST_GROUP.new("1:4", :m)
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)
      end

      it "raises ParseError if called with empty string" do
        expect { TEST_GROUP.parse("") }.to raise_error(UnitMeasurements::ParseError, "Unable to parse: ''.")
      end
    end

    context "when quantity, source unit, and target unit is provided" do
      it "parses scientific notations" do
        measurement = TEST_GROUP.parse("4.3e12 m to cm")
        expect(measurement.quantity).to eq(0.43e15)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("4.3e12 m to cm")
        expect(measurement.quantity).to eq(0.43e15)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("4.3e12m to cm")
        expect(measurement.quantity).to eq(0.43e15)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("430000000000000.0 cm")
      end

      it "parses fractions" do
        measurement = TEST_GROUP.parse("1/4 m to cm")
        expect(measurement.quantity).to eq(0.25e2)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("1/4 m to cm")
        expect(measurement.quantity).to eq(0.25e2)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("1/4m to cm")
        expect(measurement.quantity).to eq(25)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("25.0 cm")
      end

      it "parses fractions with special characters" do
        measurement = TEST_GROUP.parse("⅜ m to cm")
        expect(measurement.quantity).to eq(0.375e2)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("⅜ m to cm")
        expect(measurement.quantity).to eq(0.375e2)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("⅜m to cm")
        expect(measurement.quantity).to eq(0.375e2)
        expect(measurement.unit).to eq(cm)
      end

      it "parses mixed fractions" do
        measurement = TEST_GROUP.parse("3 2/5 m to cm")
        expect(measurement.quantity).to eq(0.34e3)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("340.0 cm")
      end

      it "parses mixed fractions with special characters" do
        measurement = TEST_GROUP.parse("3⅜ m to cm")
        expect(measurement.quantity).to eq(0.3375e3)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("3 ⅜ m to cm")
        expect(measurement.quantity).to eq(0.3375e3)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("3⅜ m to cm")
        expect(measurement.quantity).to eq(0.3375e3)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("3 ⅜ m to cm")
        expect(measurement.quantity).to eq(0.3375e3)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("3⅜m to cm")
        expect(measurement.quantity).to eq(0.3375e3)
        expect(measurement.unit).to eq(cm)
      end

      it "parses exponent symbols" do
        measurement = TEST_GROUP.parse("10⁸ m to cm")
        expect(measurement.quantity).to eq(0.108e5)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("10e³ m to cm")
        expect(measurement.quantity).to eq(0.1e7)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("10e⁺³ m to cm")
        expect(measurement.quantity).to eq(0.1e7)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("10e+³ m to cm")
        expect(measurement.quantity).to eq(0.1e7)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("10e⁻³ m to cm")
        expect(measurement.quantity).to eq(0.1e1)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("10e-³ m to cm")
        expect(measurement.quantity).to eq(0.1e1)
        expect(measurement.unit).to eq(cm)
      end

      it "parses decimals" do
        measurement = TEST_GROUP.parse("2.1 m to cm")
        expect(measurement.quantity).to eq(0.21e3)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("2.1 m to cm")
        expect(measurement.quantity).to eq(0.21e3)
        expect(measurement.unit).to eq(cm)

        measurement = TEST_GROUP.parse("2.1m to cm")
        expect(measurement.quantity).to eq(0.21e3)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("210.0 cm")
      end

      it "parses complexes" do
        measurement = TEST_GROUP.parse("2.5+3.2i m to cm")
        expect(measurement.quantity).to eq(Complex(250, 320))
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("250.0+320.0i cm")
      end

      it "parses integers" do
        measurement = TEST_GROUP.parse("1 m to cm")
        expect(measurement.quantity).to eq(0.1e3)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("100.0 cm")
      end

      it "parses ratios" do
        measurement = TEST_GROUP.parse("1:4 m to cm")
        expect(measurement.quantity).to eq(0.25e2)
        expect(measurement.unit).to eq(cm)
      end
    end
  end

  describe ".clear_cache" do
    it "clears the cache" do
      cache.set("km", "m", 0.001)

      cache.clear_cache
      TEST_GROUP.clear_cache

      expect(cache.get("km", "m")).to be_nil
    end
  end
end
