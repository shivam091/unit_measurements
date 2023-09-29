# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/magnetic_induction_spec.rb

RSpec.describe UnitMeasurements::MagneticInduction do
  describe "T" do
    subject { described_class.new(10, :T) }

    it "converts to G" do
      expect(subject.convert_to(:G).quantity).to eq(1e+5)
    end
  end

  describe "G" do
    subject { described_class.new(10, :G) }

    it "converts to T" do
      expect(subject.convert_to(:T).quantity).to eq(0.001)
    end
  end
end
