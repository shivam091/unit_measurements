# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/temperature_spec.rb

RSpec.describe UnitMeasurements::Temperature do
  describe "K" do
    subject { described_class.new(5, "K") }

    it "converts to °R" do
      expect(subject.convert_to("°R").quantity).to eq(9)
    end

    it "converts to Tₚ" do
      expect(subject.convert_to("Tₚ").quantity).to eq(3.52911947057561e-32)
    end
  end
end
