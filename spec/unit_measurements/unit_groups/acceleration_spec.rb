# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/acceleration_spec.rb

RSpec.describe UnitMeasurements::Acceleration do
  describe "m/s²" do
    subject { described_class.new(5, "m/s²") }

    it "converts to Gal" do
      expect(subject.convert_to("Gal").quantity).to eq(500)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(196.850393700787)
    end

    it "converts to ipm/s" do
      expect(subject.convert_to("ipm/s").quantity).to eq(11811.0245520492)
    end

    it "converts to iph/s" do
      expect(subject.convert_to("iph/s").quantity).to eq(7.08661473122951e+5)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(16.4041994750656)
    end

    it "converts to fpm/s" do
      expect(subject.convert_to("fpm/s").quantity).to eq(984.251968503937)
    end

    it "converts to fph/s" do
      expect(subject.convert_to("fph/s").quantity).to eq(59055.1157852317)
    end

    it "converts to mi/s²" do
      expect(subject.convert_to("mi/s²").quantity).to eq(0.00310685596118667)
    end

    it "converts to mpm/s" do
      expect(subject.convert_to("mpm/s").quantity).to eq(0.1864113576712)
    end

    it "converts to mph/s" do
      expect(subject.convert_to("mph/s").quantity).to eq(11.184681460272)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(9.71922330187674)
    end
  end
end
