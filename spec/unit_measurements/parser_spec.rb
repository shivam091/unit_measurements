# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/parser_spec.rb

RSpec.describe UnitMeasurements::Parser do
  describe ".parse" do
    context "when parsing strings with complex numbers and unit" do
      it "parses complex numbers with unit" do
        quantity, unit = described_class.parse("1.23+4.56i m")

        expect(quantity).to eq(Complex(1.23, 4.56))
        expect(unit).to eq("m")
      end

      it "parses complex numbers without unit" do
        quantity, unit = described_class.parse("1.23+4.56i")

        expect(quantity).to eq(Complex(1.23, 4.56))
        expect(unit).to be_nil
      end
    end

    context "when parsing strings with scientific numbers and unit" do
      it "parses scientific numbers with unit" do
        quantity, unit = described_class.parse("1.23E-2 m")

        expect(quantity).to eq(0.0123)
        expect(unit).to eq("m")
      end

      it "parses scientific numbers without unit" do
        quantity, unit = described_class.parse("1.23E-2")

        expect(quantity).to eq(0.0123)
        expect(unit).to be_nil
      end
    end

    context "when parsing strings with rational numbers and unit" do
      it "parses rational numbers with unit" do
        quantity, unit = described_class.parse("1 2/3 m")

        expect(quantity).to eq(1.6666666666666667)
        expect(unit).to eq("m")
      end

      it "parses rational numbers without unit" do
        quantity, unit = described_class.parse("1 2/3")

        expect(quantity).to eq(1.6666666666666667)
        expect(unit).to be_nil
      end

      it "parses whole numbers with unit" do
        quantity, unit = described_class.parse("5 m")

        expect(quantity).to eq(5)
        expect(unit).to eq("m")
      end

      it "parses whole numbers without unit" do
        quantity, unit = described_class.parse("5")

        expect(quantity).to eq(5)
        expect(unit).to be_nil
      end
    end

    context "when parsing unknown format" do
      it "raises a ParseError" do
        expect {
          described_class.parse("unknown format")
        }.to raise_error(UnitMeasurements::ParseError, "Unable to parse: 'unknown format'.")
      end
    end
  end
end
