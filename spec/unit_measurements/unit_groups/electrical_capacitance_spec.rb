# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electrical_capacitance_spec.rb

RSpec.describe UnitMeasurements::ElectricalCapacitance do
  describe "F" do
    subject { described_class.new(5, "F") }

    it "converts to C/V" do
      expect(subject.convert_to("C/V").quantity).to eq(5)
    end

    it "converts to abF" do
      expect(subject.convert_to("abF").quantity).to eq(5e-9)
    end

    it "converts to statF" do
      expect(subject.convert_to("statF").quantity).to eq(4.49357418890986e+12)
    end
  end
end
