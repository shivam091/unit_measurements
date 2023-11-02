# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/plane_angle_spec.rb

RSpec.describe UnitMeasurements::PlaneAngle do
  describe "rad" do
    subject { described_class.new(5, "rad") }

    it "converts to deg" do
      expect(subject.convert_to("deg").quantity).to eq(286.478897565412)
    end

    it "converts to gon" do
      expect(subject.convert_to("gon").quantity).to eq(318.309886183791)
    end

    it "converts to cir" do
      expect(subject.convert_to("cir").quantity).to eq(0.795774715459477)
    end

    it "converts to mil" do
      expect(subject.convert_to("mil").quantity).to eq(5092.95817894065)
    end

    it "converts to rev" do
      expect(subject.convert_to("rev").quantity).to eq(0.795774715459477)
    end

    it "converts to brad" do
      expect(subject.convert_to("brad").quantity).to eq(203.718327157626)
    end

    it "converts to arcmin" do
      expect(subject.convert_to("arcmin").quantity).to eq(17188.7338539247)
    end

    it "converts to arcsec" do
      expect(subject.convert_to("arcsec").quantity).to eq(1.03132403123548e+6)
    end
  end
end
