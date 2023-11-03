# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electric_charge_spec.rb

RSpec.describe UnitMeasurements::ElectricCharge do
  describe "C" do
    subject { described_class.new(5, "C") }

    it "converts to Fr" do
      expect(subject.convert_to("Fr").quantity).to eq(1.49896226842157e+10)
    end

    it "converts to Fd" do
      expect(subject.convert_to("Fd").quantity).to eq(5.1821345277316e-5)
    end

    it "converts to abC" do
      expect(subject.convert_to("abC").quantity).to eq(0.5)
    end

    it "converts to statC" do
      expect(subject.convert_to("statC").quantity).to eq(1.49896226842157e+10)
    end
  end
end
