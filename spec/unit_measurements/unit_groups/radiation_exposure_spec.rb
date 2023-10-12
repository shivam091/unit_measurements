# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/radiation_exposure_spec.rb

RSpec.describe UnitMeasurements::RadiationExposure do
  describe "C/kg" do
    subject { described_class.new(2, "C/kg") }

    it "converts to R" do
      expect(subject.convert_to("R").quantity).to eq(7751.93798449612)
    end
  end

  describe "R" do
    subject { described_class.new(2, "R") }

    it "converts to C/kg" do
      expect(subject.convert_to("C/kg").quantity).to eq(0.000516)
    end
  end
end
