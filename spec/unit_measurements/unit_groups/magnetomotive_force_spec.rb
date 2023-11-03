# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/magnetomotive_force_spec.rb

RSpec.describe UnitMeasurements::MagnetomotiveForce do
  describe "A⋅t" do
    subject { described_class.new(5, "A⋅t") }

    it "converts to Gb" do
      expect(subject.convert_to("Gb").quantity).to eq(6.28318530717959)
    end
  end
end
