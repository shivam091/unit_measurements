# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electrical_inductance_spec.rb

RSpec.describe UnitMeasurements::ElectricalInductance do
  describe "H" do
    subject { described_class.new(10, "H") }

    it "converts to abH" do
      expect(subject.convert_to("abH").quantity).to eq(1e+10)
    end

    it "converts to statH" do
      expect(subject.convert_to("statH").quantity).to eq(1.11265005605362e-11)
    end

    it "converts to Wb/A" do
      expect(subject.convert_to("Wb/A").quantity).to eq(10)
    end
  end

  describe "abH" do
    subject { described_class.new(10, "abH") }

    it "converts to H" do
      expect(subject.convert_to("H").quantity).to eq(1e-8)
    end

    it "converts to statH" do
      expect(subject.convert_to("statH").quantity).to eq(1.11265005605362e-20)
    end

    it "converts to Wb/A" do
      expect(subject.convert_to("Wb/A").quantity).to eq(1e-8)
    end
  end

  describe "statH" do
    subject { described_class.new(10, "statH") }

    it "converts to H" do
      expect(subject.convert_to("H").quantity).to eq(8.98755178736818e+12)
    end

    it "converts to abH" do
      expect(subject.convert_to("abH").quantity).to eq(8.98755178736818e+21)
    end

    it "converts to Wb/A" do
      expect(subject.convert_to("Wb/A").quantity).to eq(8.98755178736818e+12)
    end
  end

  describe "Wb/A" do
    subject { described_class.new(10, "Wb/A") }

    it "converts to H" do
      expect(subject.convert_to("H").quantity).to eq(10)
    end

    it "converts to abH" do
      expect(subject.convert_to("abH").quantity).to eq(1e+10)
    end

    it "converts to statH" do
      expect(subject.convert_to("statH").quantity).to eq(1.11265005605362e-11)
    end
  end
end
