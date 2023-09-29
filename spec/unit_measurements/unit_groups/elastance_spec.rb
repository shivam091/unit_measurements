# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/elastance_spec.rb

RSpec.describe UnitMeasurements::Elastance do
  describe "D" do
    subject { described_class.new(10, "D") }

    it "converts to V/C" do
      expect(subject.convert_to("V/C").quantity).to eq(10)
    end
  end

  describe "V/C" do
    subject { described_class.new(10, "V/C") }

    it "converts to D" do
      expect(subject.convert_to("D").quantity).to eq(10)
    end
  end
end
