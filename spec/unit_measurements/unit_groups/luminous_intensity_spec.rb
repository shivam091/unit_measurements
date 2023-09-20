# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/luminous_intensity_spec.rb

RSpec.describe UnitMeasurements::LuminousIntensity do
  describe "cd" do
    subject { described_class.new(10, :cd) }

    it "converts to hk" do
      expect(subject.convert_to(:hk).quantity).to eq(10.8695652173913)
    end
  end

  describe "hk" do
    subject { described_class.new(10, :hk) }

    it "converts to cd" do
      expect(subject.convert_to(:cd).quantity).to eq(9.2)
    end
  end
end
