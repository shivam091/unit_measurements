# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/measurement_spec.rb

RSpec.describe UnitMeasurements::Measurement do
  Length = UnitMeasurements.build do
    unit :m, aliases: [:meter]
    unit :cm, value: 0.01, aliases: [:centimeter]
  end
  let(:length) { Length.new(1, :m) }
  let(:m) { Length.unit_group.unit_for(:m) }
  let(:cm) { Length.unit_group.unit_for(:cm) }

  describe "#initialize" do
    it "raises an error for blank quantity" do
      expect { Length.new(nil, :m) }.to raise_error(UnitMeasurements::BaseError, "Quantity cannot be blank.")
    end

    it "raises an error for blank unit" do
      expect { Length.new(1, nil) }.to raise_error(UnitMeasurements::BaseError, "Unit cannot be blank.")
    end

    it "sets attributes correctly" do
      expect(length.quantity).to eq(1)
      expect(length.unit).to eq(m)
    end

    it "converts float quantity to BigDecimal" do
      measurement = Length.new(10.5, :m)

      expect(measurement.quantity).to eq(BigDecimal("10.5"))
    end

    it "converts integer quantity to Rational" do
      measurement = Length.new(10, :m)

      expect(measurement.quantity).to eq(Rational(10))
    end

    it "converts string quantity to BigDecimal" do
      measurement = Length.new("10.5", :m)

      expect(measurement.quantity).to eq(BigDecimal("10.5"))
    end

    it "converts string quantity with fraction format to Rational" do
      measurement = Length.new("1/2", :m)

      expect(measurement.quantity).to eq(Rational(1, 2))
    end
  end

  describe "#unit_group" do
    it "raises error if directly being subclassed" do
      expect {
        described_class.new(1, :g)
      }.to raise_error("`Measurement` does not have a `unit_group` object. You cannot directly use `Measurement`. Instead, build a new unit group by calling `UnitMeasurements.build`.")
    end
  end

  describe "#convert_to" do
    it "converts to the target unit" do
      converted_length = length.convert_to(:cm)
      expect(converted_length.quantity).to eq(100)
      expect(converted_length.unit).to eq(cm)
    end

    it "returns self when target unit is the same as source unit" do
      converted_length = length.convert_to(:m)
      expect(converted_length).to eq(length)
    end
  end

  describe "#convert_to!" do
    let(:measurement) { Length.new(300, :cm) }

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
      expect(length.inspect).to eq("1 m")
    end
  end

  describe "#to_s" do
    it "returns a string representation" do
      expect(length.to_s).to eq("1 m")
    end
  end

  describe ".name" do
    it "returns humanized name of the unit group" do
      expect(UnitMeasurements::Length.name).to eq("length")
    end
  end

  describe ".parse" do
    context "when only quantity and source unit is provided" do
      it "parses scientific notations" do
        measurement = Length.parse("4.3e12 m")
        expect(measurement.quantity).to eq(4.3e12)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("4.3e12 m")
        expect(measurement.quantity).to eq(4.3e12)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("4.3e12m")
        expect(measurement.quantity).to eq(4.3e12)
        expect(measurement.unit).to eq(m)

        measurement = Length.new("4.3e12", :m)
        expect(measurement.quantity).to eq(4.3e12)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("4300000000000.0 m")
      end

      it "parses fractions" do
        measurement = Length.parse("1/4 m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("1/4 m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("1/4m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        measurement = Length.new("1/4", :m)
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("0.25 m")
      end

      it "parses fractions with special characters" do
        measurement = Length.parse("⅜ m")
        expect(measurement.quantity).to eq(0.375)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("⅜ m")
        expect(measurement.quantity).to eq(0.375)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("⅜m")
        expect(measurement.quantity).to eq(0.375)
        expect(measurement.unit).to eq(m)

        measurement = Length.new("⅜", :m)
        expect(measurement.quantity).to eq(0.375)
        expect(measurement.unit).to eq(m)
      end

      it "parses mixed fractions" do
        measurement = Length.parse("3 2/5 m")
        expect(measurement.quantity).to eq(3.4)
        expect(measurement.unit).to eq(m)

        measurement = Length.new("3 2/5", :m)
        expect(measurement.quantity).to eq(3.4)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("3.4 m")
      end

      it "parses mixed fractions with special characters" do
        measurement = Length.parse("3⅜ m")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("3 ⅜ m")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("3⅜ m")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("3 ⅜ m")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("3⅜cm")
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(cm)

        measurement = Length.new("3⅜", :cm)
        expect(measurement.quantity).to eq(3.375)
        expect(measurement.unit).to eq(cm)
      end

      it "parses exponent symbols" do
        measurement = Length.parse("10⁸ m")
        expect(measurement.quantity).to eq(108)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("10e³ m")
        expect(measurement.quantity).to eq(10000)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("10e⁺³ m")
        expect(measurement.quantity).to eq(10000)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("10e+³ m")
        expect(measurement.quantity).to eq(10000)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("10e⁻³ m")
        expect(measurement.quantity).to eq(0.01)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("10e-³ m")
        expect(measurement.quantity).to eq(0.01)
        expect(measurement.unit).to eq(m)

        measurement = Length.new("10e-³", :m)
        expect(measurement.quantity).to eq(0.01)
        expect(measurement.unit).to eq(m)
      end

      it "parses decimals" do
        measurement = Length.parse("2.1 m")
        expect(measurement.quantity).to eq(2.1)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("2.1 m")
        expect(measurement.quantity).to eq(2.1)
        expect(measurement.unit).to eq(m)

        measurement = Length.parse("2.1m")
        expect(measurement.quantity).to eq(2.1)
        expect(measurement.unit).to eq(m)

        measurement = Length.new("2.1", :m)
        expect(measurement.quantity).to eq(2.1)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("2.1 m")
      end

      it "parses complexes" do
        measurement = Length.parse("2.5+3.2i m")
        expect(measurement.quantity).to eq(Complex(2.5, 3.2))
        expect(measurement.unit).to eq(m)

        measurement = Length.new("2.5+3.2i", :m)
        expect(measurement.quantity).to eq(Complex(2.5, 3.2))
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("2.5+3.2i m")
      end

      it "parses integers" do
        measurement = Length.parse("1 m")
        expect(measurement.quantity).to eq(1)
        expect(measurement.unit).to eq(m)

        measurement = Length.new("1", :m)
        expect(measurement.quantity).to eq(1)
        expect(measurement.unit).to eq(m)

        expect(measurement.inspect).to eq("1.0 m")
      end

      it "parses ratios" do
        measurement = Length.parse("1:4 m")
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)

        measurement = Length.new("1:4", :m)
        expect(measurement.quantity).to eq(0.25)
        expect(measurement.unit).to eq(m)
      end

      it "raises ParseError if called with empty string" do
        expect { Length.parse("") }.to raise_error(UnitMeasurements::ParseError, "Unable to parse: ''.")
      end
    end

    context "when quantity, source unit, and target unit is provided" do
      it "parses scientific notations" do
        measurement = Length.parse("4.3e12 m to cm")
        expect(measurement.quantity).to eq(0.43e15)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("4.3e12 m to cm")
        expect(measurement.quantity).to eq(0.43e15)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("4.3e12m to cm")
        expect(measurement.quantity).to eq(0.43e15)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("430000000000000.0 cm")
      end

      it "parses fractions" do
        measurement = Length.parse("1/4 m to cm")
        expect(measurement.quantity).to eq(0.25e2)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("1/4 m to cm")
        expect(measurement.quantity).to eq(0.25e2)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("1/4m to cm")
        expect(measurement.quantity).to eq(25)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("25.0 cm")
      end

      it "parses fractions with special characters" do
        measurement = Length.parse("⅜ m to cm")
        expect(measurement.quantity).to eq(0.375e2)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("⅜ m to cm")
        expect(measurement.quantity).to eq(0.375e2)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("⅜m to cm")
        expect(measurement.quantity).to eq(0.375e2)
        expect(measurement.unit).to eq(cm)
      end

      it "parses mixed fractions" do
        measurement = Length.parse("3 2/5 m to cm")
        expect(measurement.quantity).to eq(0.34e3)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("340.0 cm")
      end

      it "parses mixed fractions with special characters" do
        measurement = Length.parse("3⅜ m to cm")
        expect(measurement.quantity).to eq(0.3375e3)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("3 ⅜ m to cm")
        expect(measurement.quantity).to eq(0.3375e3)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("3⅜ m to cm")
        expect(measurement.quantity).to eq(0.3375e3)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("3 ⅜ m to cm")
        expect(measurement.quantity).to eq(0.3375e3)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("3⅜m to cm")
        expect(measurement.quantity).to eq(0.3375e3)
        expect(measurement.unit).to eq(cm)
      end

      it "parses exponent symbols" do
        measurement = Length.parse("10⁸ m to cm")
        expect(measurement.quantity).to eq(0.108e5)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("10e³ m to cm")
        expect(measurement.quantity).to eq(0.1e7)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("10e⁺³ m to cm")
        expect(measurement.quantity).to eq(0.1e7)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("10e+³ m to cm")
        expect(measurement.quantity).to eq(0.1e7)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("10e⁻³ m to cm")
        expect(measurement.quantity).to eq(0.1e1)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("10e-³ m to cm")
        expect(measurement.quantity).to eq(0.1e1)
        expect(measurement.unit).to eq(cm)
      end

      it "parses decimals" do
        measurement = Length.parse("2.1 m to cm")
        expect(measurement.quantity).to eq(0.21e3)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("2.1 m to cm")
        expect(measurement.quantity).to eq(0.21e3)
        expect(measurement.unit).to eq(cm)

        measurement = Length.parse("2.1m to cm")
        expect(measurement.quantity).to eq(0.21e3)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("210.0 cm")
      end

      it "parses complexes" do
        measurement = Length.parse("2.5+3.2i m to cm")
        expect(measurement.quantity).to eq(Complex(250, 320))
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("250.0+320.0i cm")
      end

      it "parses integers" do
        measurement = Length.parse("1 m to cm")
        expect(measurement.quantity).to eq(0.1e3)
        expect(measurement.unit).to eq(cm)

        expect(measurement.inspect).to eq("100.0 cm")
      end

      it "parses ratios" do
        measurement = Length.parse("1:4 m to cm")
        expect(measurement.quantity).to eq(0.25e2)
        expect(measurement.unit).to eq(cm)
      end
    end
  end
end
