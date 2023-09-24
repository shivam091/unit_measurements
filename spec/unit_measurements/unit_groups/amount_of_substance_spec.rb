# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/amount_of_substance_spec.rb

RSpec.describe UnitMeasurements::AmountOfSubstance do
  describe "mol" do
    subject { described_class.new(2, "mol") }

    it "converts to NA" do
      expect(subject.convert_to("NA").quantity).to eq(1.20442825799999e+24)
    end
  end

  describe "NA" do
    subject { described_class.new(2, "NA") }

    it "converts to mol" do
      expect(subject.convert_to("mol").quantity).to eq(3.3210778420644e-24)
    end
  end
end
