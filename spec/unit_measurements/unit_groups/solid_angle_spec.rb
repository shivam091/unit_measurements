# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/solid_angle_spec.rb

RSpec.describe UnitMeasurements::SolidAngle do
  describe "sr" do
    subject { described_class.new(5, "sr") }

    it "converts to sp" do
      expect(subject.convert_to("sp").quantity).to eq(0.397887357729738)
    end

    it "converts to deg²" do
      expect(subject.convert_to("deg²").quantity).to eq(16414.0317500587)
    end

    it "converts to arcmin²" do
      expect(subject.convert_to("arcmin²").quantity).to eq(5.90905143002114e+7)
    end

    it "converts to arcsec²" do
      expect(subject.convert_to("arcsec²").quantity).to eq(2.12725851480761e+11)
    end
  end
end
