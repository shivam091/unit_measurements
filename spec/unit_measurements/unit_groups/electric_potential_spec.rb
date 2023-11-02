# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electric_potential_spec.rb

RSpec.describe UnitMeasurements::ElectricPotential do
  describe "V" do
    subject { described_class.new(5, "V") }

    it "converts to abV" do
      expect(subject.convert_to("abV").quantity).to eq(5e+8)
    end

    it "converts to statV" do
      expect(subject.convert_to("statV").quantity).to eq(0.0166782047599076)
    end

    it "converts to W/A" do
      expect(subject.convert_to("W/A").quantity).to eq(5)
    end

    it "converts to J/C" do
      expect(subject.convert_to("J/C").quantity).to eq(5)
    end
  end
end
