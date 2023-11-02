# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/magnetic_flux_spec.rb

RSpec.describe UnitMeasurements::MagneticFlux do
  describe "Wb" do
    subject { described_class.new(5, "Wb") }

    it "converts to Mx" do
      expect(subject.convert_to("Mx").quantity).to eq(5e+8)
    end

    it "converts to T·m²" do
      expect(subject.convert_to("T·m²").quantity).to eq(5)
    end

    it "converts to G·cm²" do
      expect(subject.convert_to("G·cm²").quantity).to eq(5e+8)
    end
  end
end
