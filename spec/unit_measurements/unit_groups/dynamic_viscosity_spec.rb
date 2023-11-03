# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/dynamic_viscosity_spec.rb

RSpec.describe UnitMeasurements::DynamicViscosity do
  describe "Pa⋅s" do
    subject { described_class.new(5, "Pa⋅s") }

    it "converts to P" do
      expect(subject.convert_to("P").quantity).to eq(50)
    end

    it "converts to Pl" do
      expect(subject.convert_to("Pl").quantity).to eq(5)
    end

    it "converts to lb/(ft⋅s)" do
      expect(subject.convert_to("lb/(ft⋅s)").quantity).to eq(3.35984474829387)
    end

    it "converts to lb/(ft⋅h)" do
      expect(subject.convert_to("lb/(ft⋅h)").quantity).to eq(12095.4407687475)
    end

    it "converts to (lbf⋅s)/ft²" do
      expect(subject.convert_to("(lbf⋅s)/ft²").quantity).to eq(0.104427168941856)
    end

    it "converts to (lbf⋅s)/in²" do
      expect(subject.convert_to("(lbf⋅s)/in²").quantity).to eq(0.000725188719486416)
    end
  end
end
