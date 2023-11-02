# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/catalytic_activity_spec.rb

RSpec.describe UnitMeasurements::CatalyticActivity do
  describe "kat" do
    subject { described_class.new(5, "kat") }

    it "converts to U" do
      expect(subject.convert_to("U").quantity).to eq(3e+8)
    end
  end
end
