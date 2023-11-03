# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/radiation_equivalent_dose_spec.rb

RSpec.describe UnitMeasurements::RadiationEquivalentDose do
  describe "Sv" do
    subject { described_class.new(5, "Sv") }

    it "converts to rem" do
      expect(subject.convert_to("rem").quantity).to eq(500)
    end
  end
end
