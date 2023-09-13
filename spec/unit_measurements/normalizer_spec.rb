# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/normalizer_spec.rb

RSpec.describe UnitMeasurements::Normalizer do
  describe ".normalize" do
    it "normalizes ratios" do
      quantity = described_class.normalize("1:2")
      expect(quantity).to eq("1/2")
    end

    it "normalizes special characters of fractional notations" do
      quantity = described_class.normalize("¼")
      expect(quantity).to eq("1/4")
    end

    it "normalizes special characters of exponents" do
      quantity = described_class.normalize("1e²")
      expect(quantity).to eq("1e2")
    end

    it "strips leading and trailing whitespaces" do
      quantity = described_class.normalize("  1  ")
      expect(quantity).to eq("1")
    end
  end
end
