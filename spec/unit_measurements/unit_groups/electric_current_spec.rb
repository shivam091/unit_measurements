# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electric_current_spec.rb

RSpec.describe UnitMeasurements::ElectricCurrent do
  describe "A" do
    subject { described_class.new(5, "A") }

    it "converts to abA" do
      expect(subject.convert_to("abA").quantity).to eq(0.5)
    end

    it "converts to Bi" do
      expect(subject.convert_to("Bi").quantity).to eq(0.5)
    end

    it "converts to statA" do
      expect(subject.convert_to("statA").quantity).to eq(1.49896271779928e+10)
    end
  end
end
