# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electric_conductance_spec.rb

RSpec.describe UnitMeasurements::ElectricConductance do
  describe "S" do
    subject { described_class.new(10, "S") }

    it "converts to abS" do
      expect(subject.convert_to("abS").quantity).to eq(1e-8)
    end

    it "converts to statS" do
      expect(subject.convert_to("statS").quantity).to eq(8.99000042253002e+12)
    end

    it "converts to A/V" do
      expect(subject.convert_to("A/V").quantity).to eq(10)
    end
  end

  describe "abS" do
    subject { described_class.new(10, "abS") }

    it "converts to S" do
      expect(subject.convert_to("S").quantity).to eq(1e+10)
    end

    it "converts to statS" do
      expect(subject.convert_to("statS").quantity).to eq(8.99000042253002e+21)
    end

    it "converts to A/V" do
      expect(subject.convert_to("A/V").quantity).to eq(1e+10)
    end
  end

  describe "statS" do
    subject { described_class.new(10, "statS") }

    it "converts to S" do
      expect(subject.convert_to("S").quantity).to eq(1.112347e-11)
    end

    it "converts to abS" do
      expect(subject.convert_to("abS").quantity).to eq(1.112347e-20)
    end

    it "converts to A/V" do
      expect(subject.convert_to("A/V").quantity).to eq(1.112347e-11)
    end
  end

  describe "A/V" do
    subject { described_class.new(10, "A/V") }

    it "converts to S" do
      expect(subject.convert_to("S").quantity).to eq(10)
    end

    it "converts to abS" do
      expect(subject.convert_to("abS").quantity).to eq(1e-8)
    end

    it "converts to statS" do
      expect(subject.convert_to("statS").quantity).to eq(8.99000042253002e+12)
    end
  end
end
