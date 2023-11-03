# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/luminous_intensity_spec.rb

RSpec.describe UnitMeasurements::LuminousIntensity do
  describe "cd" do
    subject { described_class.new(5, "cd") }

    it "converts to hk" do
      expect(subject.convert_to("hk").quantity).to eq(5.43478260869565)
    end
  end
end
