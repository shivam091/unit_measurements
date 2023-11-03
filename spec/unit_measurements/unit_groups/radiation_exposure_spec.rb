# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/radiation_exposure_spec.rb

RSpec.describe UnitMeasurements::RadiationExposure do
  describe "C/kg" do
    subject { described_class.new(5, "C/kg") }

    it "converts to R" do
      expect(subject.convert_to("R").quantity).to eq(19379.8449612403)
    end
  end
end
