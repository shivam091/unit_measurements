# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/magnetomotive_force_spec.rb

RSpec.describe UnitMeasurements::MagnetomotiveForce do
  describe "A⋅t" do
    subject { described_class.new(1, "A⋅t") }

    it "converts to Gb" do
      expect(subject.convert_to("Gb").quantity).to eq(1.25663706143592)
    end
  end

  describe "Gb" do
    subject { described_class.new(1, "Gb") }

    it "converts to A⋅t" do
      expect(subject.convert_to("A⋅t").quantity).to eq(0.795774715459477)
    end
  end
end
