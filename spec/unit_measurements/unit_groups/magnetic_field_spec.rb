# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/magnetic_field_spec.rb

RSpec.describe UnitMeasurements::MagneticField do
  describe "Oe" do
    subject { described_class.new(5, "Oe") }

    it "converts to A/m" do
      expect(subject.convert_to("A/m").quantity).to eq(397.887357729738)
    end
  end
end
