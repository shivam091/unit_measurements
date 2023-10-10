# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/radiation_equivalent_dose_spec.rb

RSpec.describe UnitMeasurements::RadiationEquivalentDose do
  describe "Sv" do
    subject { described_class.new(2, "Sv") }

    it "converts to rem" do
      expect(subject.convert_to("rem").quantity).to eq(200)
    end
  end

  describe "rem" do
    subject { described_class.new(2, "rem") }

    it "converts to Sv" do
      expect(subject.convert_to("Sv").quantity).to eq(0.02)
    end
  end
end
