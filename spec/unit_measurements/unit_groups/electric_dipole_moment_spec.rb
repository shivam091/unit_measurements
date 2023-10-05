# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electric_dipole_moment_spec.rb

RSpec.describe UnitMeasurements::ElectricDipoleMoment do
  describe "C⋅m" do
    subject { described_class.new(2, "C⋅m") }

    it "converts to D" do
      expect(subject.convert_to("D").quantity).to eq(5.9958491635618e+29)
    end
  end

  describe "D" do
    subject { described_class.new(2, "D") }

    it "converts to C⋅m" do
      expect(subject.convert_to("C⋅m").quantity).to eq(6.6712819e-30)
    end
  end
end
