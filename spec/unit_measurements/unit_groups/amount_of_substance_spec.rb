# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/amount_of_substance_spec.rb

RSpec.describe UnitMeasurements::AmountOfSubstance do
  describe "mol" do
    subject { described_class.new(5, "mol") }

    it "converts to NA" do
      expect(subject.convert_to("NA").quantity).to eq(3.01107064499998e+24)
    end
  end
end
