# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/magnetic_induction_spec.rb

RSpec.describe UnitMeasurements::MagneticInduction do
  describe "T" do
    subject { described_class.new(5, "T") }

    it "converts to G" do
      expect(subject.convert_to("G").quantity).to eq(50000)
    end
  end
end
