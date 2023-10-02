# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/magnetic_field_spec.rb

RSpec.describe UnitMeasurements::MagneticField do
  describe "Oe" do
    subject { described_class.new(10, "Oe") }

    it "converts to A/m" do
      expect(subject.convert_to("A/m").quantity).to eq(795.774715459477)
    end
  end

  describe "A/m" do
    subject { described_class.new(10, "A/m") }

    it "converts to Oe" do
      expect(subject.convert_to("Oe").quantity).to eq(0.125663706143592)
    end
  end
end
