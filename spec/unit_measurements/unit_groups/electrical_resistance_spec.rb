# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electrical_resistance_spec.rb

RSpec.describe UnitMeasurements::ElectricalResistance do
  describe "Ω" do
    subject { described_class.new(5, "Ω") }

    it "converts to abΩ" do
      expect(subject.convert_to("abΩ").quantity).to eq(5e+9)
    end

    it "converts to statΩ" do
      expect(subject.convert_to("statΩ").quantity).to eq(5.56325028026696e-12)
    end

    it "converts to S" do
      expect(subject.convert_to("S").quantity).to eq(5)
    end

    it "converts to V/A" do
      expect(subject.convert_to("V/A").quantity).to eq(5)
    end
  end
end
