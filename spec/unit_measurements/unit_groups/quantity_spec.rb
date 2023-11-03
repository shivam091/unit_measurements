# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/quantity_spec.rb

RSpec.describe UnitMeasurements::Quantity do
  describe "pc" do
    subject { described_class.new(12, "pc") }

    it "converts to pr" do
      expect(subject.convert_to("pr").quantity).to eq(6)
    end

    it "converts to dz" do
      expect(subject.convert_to("dz").quantity).to eq(1)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(0.0833333333333333)
    end

    it "converts to gg" do
      expect(subject.convert_to("gg").quantity).to eq(0.00694444444444444)
    end
  end
end
