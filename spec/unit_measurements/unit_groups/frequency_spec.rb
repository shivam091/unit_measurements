# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/frequency_spec.rb

RSpec.describe UnitMeasurements::Frequency do
  describe "Hz" do
    subject { described_class.new(5, "Hz") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(31.4159265358979)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(1800)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(5)
    end
  end
end
