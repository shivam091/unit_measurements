# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electric_dipole_moment_spec.rb

RSpec.describe UnitMeasurements::ElectricDipoleMoment do
  describe "C⋅m" do
    subject { described_class.new(5, "C⋅m") }

    it "converts to D" do
      expect(subject.convert_to("D").quantity).to eq(1.49896229089045e+30)
    end
  end
end
