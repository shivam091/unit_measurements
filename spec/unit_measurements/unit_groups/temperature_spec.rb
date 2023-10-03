# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/temperature_spec.rb

RSpec.describe UnitMeasurements::Temperature do
  describe "K" do
    subject { described_class.new(2, "K") }

    it "converts to °R" do
      expect(subject.convert_to("°R").quantity).to eq(3.6)
    end
  end

  describe "°R" do
    subject { described_class.new(2, "°R") }

    it "converts to K" do
      expect(subject.convert_to("K").quantity).to eq(1.11111111111111)
    end
  end
end
