# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/catalytic_activity_spec.rb

RSpec.describe UnitMeasurements::CatalyticActivity do
  describe "kat" do
    subject { described_class.new(10, "kat") }

    it "converts to U" do
      expect(subject.convert_to("U").quantity).to eq(6e+8)
    end
  end

  describe "U" do
    subject { described_class.new(10, "U") }

    it "converts to kat" do
      expect(subject.convert_to("kat").quantity).to eq(1.66666666666667e-7)
    end
  end
end
