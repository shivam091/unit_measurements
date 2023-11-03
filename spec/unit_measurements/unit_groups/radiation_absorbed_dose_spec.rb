# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/radiation_absorbed_dose_spec.rb

RSpec.describe UnitMeasurements::RadiationAbsorbedDose do
  describe "Gy" do
    subject { described_class.new(5, "Gy") }

    it "converts to rad" do
      expect(subject.convert_to("rad").quantity).to eq(500)
    end

    it "converts to erg/g" do
      expect(subject.convert_to("erg/g").quantity).to eq(50000)
    end
  end
end
