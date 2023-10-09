# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/kinetic_viscosity_spec.rb

RSpec.describe UnitMeasurements::KineticViscosity do
  describe "m²/s" do
    subject { described_class.new(10, "m²/s") }

    it "converts to St" do
      expect(subject.convert_to("St").quantity).to eq(1e+5)
    end

    it "converts to ft²/s" do
      expect(subject.convert_to("ft²/s").quantity).to eq(107.639104167097)
    end

    it "converts to in²/s" do
      expect(subject.convert_to("in²/s").quantity).to eq(15500.031000062)
    end
  end

  describe "St" do
    subject { described_class.new(10, "St") }

    it "converts to m²/s" do
      expect(subject.convert_to("m²/s").quantity).to eq(0.001)
    end

    it "converts to ft²/s" do
      expect(subject.convert_to("ft²/s").quantity).to eq(0.0107639104167097)
    end

    it "converts to in²/s" do
      expect(subject.convert_to("in²/s").quantity).to eq(1.5500031000062)
    end
  end

  describe "ft²/s" do
    subject { described_class.new(10, "ft²/s") }

    it "converts to m²/s" do
      expect(subject.convert_to("m²/s").quantity).to eq(0.9290304)
    end

    it "converts to St" do
      expect(subject.convert_to("St").quantity).to eq(9290.304)
    end

    it "converts to in²/s" do
      expect(subject.convert_to("in²/s").quantity).to eq(1440)
    end
  end

  describe "in²/s" do
    subject { described_class.new(10, "in²/s") }

    it "converts to m²/s" do
      expect(subject.convert_to("m²/s").quantity).to eq(0.0064516)
    end

    it "converts to St" do
      expect(subject.convert_to("St").quantity).to eq(64.516)
    end

    it "converts to ft²/s" do
      expect(subject.convert_to("ft²/s").quantity).to eq(0.0694444444444444)
    end
  end
end
