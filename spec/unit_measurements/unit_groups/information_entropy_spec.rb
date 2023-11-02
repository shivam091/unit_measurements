# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/information_entropy_spec.rb

RSpec.describe UnitMeasurements::InformationEntropy do
  describe "nat" do
    subject { described_class.new(5, "nat") }

    it "converts to Sh" do
      expect(subject.convert_to("Sh").quantity).to eq(7.21347520444482)
    end

    it "converts to Hart" do
      expect(subject.convert_to("Hart").quantity).to eq(2.17147240951626)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(7.21347520444482)
    end

    it "converts to B" do
      expect(subject.convert_to("B").quantity).to eq(0.901684400555602)
    end

    it "converts to nybl" do
      expect(subject.convert_to("nybl").quantity).to eq(1.8033688011112)
    end
  end
end
