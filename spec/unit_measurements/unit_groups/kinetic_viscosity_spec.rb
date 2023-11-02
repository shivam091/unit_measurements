# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/kinetic_viscosity_spec.rb

RSpec.describe UnitMeasurements::KineticViscosity do
  describe "m²/s" do
    subject { described_class.new(5, "m²/s") }

    it "converts to St" do
      expect(subject.convert_to("St").quantity).to eq(50000)
    end

    it "converts to ft²/s" do
      expect(subject.convert_to("ft²/s").quantity).to eq(53.8195520835486)
    end

    it "converts to in²/s" do
      expect(subject.convert_to("in²/s").quantity).to eq(7750.015500031)
    end
  end
end
