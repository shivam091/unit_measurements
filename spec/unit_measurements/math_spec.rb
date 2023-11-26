# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/math_spec.rb

RSpec.describe UnitMeasurements::Math do
  describe "#round" do
    let(:measurement) { UnitMeasurements::Length.new(17.625, "m") }

    context "when parameter ndigits is not specified" do
      it "rounds quantity to nearest integer" do
        expect(measurement.round.quantity).to eq(18)
        expect(measurement.round.quantity).to be_a(Integer)
      end
    end

    context "when parameter ndigits is specified" do
      it "rounds quantity to nearest big decimal" do
        expect(measurement.round(2).quantity).to eq(17.63)
        expect(measurement.round(2).quantity).to be_a(BigDecimal)
      end
    end
  end

  describe "#abs" do
    let(:measurement) { UnitMeasurements::Length.new(-17.625, "m") }

    it "returns absolute value of the quantity." do
      expect(measurement.abs.quantity).to eq(17.625)
    end
  end

  describe "#floor" do
    let(:measurement) { UnitMeasurements::Length.new(17.625, "cm") }

    it "rounds quantity to next lower integer" do
      expect(measurement.floor.quantity).to eq(17)
    end
  end

  describe "#ceil" do
    let(:measurement) { UnitMeasurements::Length.new(17.625, "m") }

    it "rounds quantity to next higher integer" do
      expect(measurement.ceil.quantity).to eq(18)
    end
  end

  describe "#sqrt" do
    let(:measurement) { UnitMeasurements::Length.new(4, "m") }

    it "returns square root of measurement quantity" do
      expect(measurement.sqrt.quantity).to eq(2.0)
    end
  end

  describe "#cbrt" do
    let(:measurement) { UnitMeasurements::Length.new(27, "m") }

    it "returns cube root of measurement quantity" do
      expect(measurement.cbrt.quantity).to eq(3.0)
    end
  end
end
