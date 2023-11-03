# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/force_spec.rb

RSpec.describe UnitMeasurements::Force do
  describe "N" do
    subject { described_class.new(2, "N") }

    it "converts to dyn" do
      expect(subject.convert_to("dyn").quantity).to eq(2e+5)
    end

    it "converts to kgf" do
      expect(subject.convert_to("kgf").quantity).to eq(0.203943242595586)
    end

    it "converts to ozf" do
      expect(subject.convert_to("ozf").quantity).to eq(7.19388617919074)
    end

    it "converts to lbf" do
      expect(subject.convert_to("lbf").quantity).to eq(0.449617886199421)
    end

    it "converts to tf" do
      expect(subject.convert_to("tf").quantity).to eq(0.000224808943099711)
    end

    it "converts to pdl" do
      expect(subject.convert_to("pdl").quantity).to eq(14.4660277024198)
    end
  end
end
