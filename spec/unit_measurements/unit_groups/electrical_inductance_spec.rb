# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electrical_inductance_spec.rb

RSpec.describe UnitMeasurements::ElectricalInductance do
  describe "H" do
    subject { described_class.new(5, "H") }

    it "converts to abH" do
      expect(subject.convert_to("abH").quantity).to eq(5e+9)
    end

    it "converts to statH" do
      expect(subject.convert_to("statH").quantity).to eq(5.56325028026809e-12)
    end

    it "converts to Wb/A" do
      expect(subject.convert_to("Wb/A").quantity).to eq(5)
    end
  end
end
