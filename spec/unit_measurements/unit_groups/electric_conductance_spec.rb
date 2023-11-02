# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electric_conductance_spec.rb

RSpec.describe UnitMeasurements::ElectricConductance do
  describe "S" do
    subject { described_class.new(5, "S") }

    it "converts to abS" do
      expect(subject.convert_to("abS").quantity).to eq(5e-9)
    end

    it "converts to statS" do
      expect(subject.convert_to("statS").quantity).to eq(4.49500021126501e+12)
    end

    it "converts to A/V" do
      expect(subject.convert_to("A/V").quantity).to eq(5)
    end
  end
end
