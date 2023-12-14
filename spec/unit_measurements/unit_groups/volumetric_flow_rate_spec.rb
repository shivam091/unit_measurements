# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/volumetric_flow_rate_spec.rb

RSpec.describe UnitMeasurements::VolumetricFlowRate do
  describe "m³/s" do
    subject { described_class.new(5, "m³/s") }

    it "converts to m³/min" do
      expect(subject.convert_to("m³/min").quantity).to eq(300)
    end

    it "converts to m³/h" do
      expect(subject.convert_to("m³/h").quantity).to eq(18000)
    end

    it "converts to l/s" do
      expect(subject.convert_to("l/s").quantity).to eq(5000)
    end

    it "converts to l/min" do
      expect(subject.convert_to("l/min").quantity).to eq(3e+5)
    end

    it "converts to l/h" do
      expect(subject.convert_to("l/h").quantity).to eq(1.8e+7)
    end

    it "converts to ft³/s" do
      expect(subject.convert_to("ft³/s").quantity).to eq(176.573333607443)
    end

    it "converts to ft³/min" do
      expect(subject.convert_to("ft³/min").quantity).to eq(10594.4000164466)
    end

    it "converts to ft³/h" do
      expect(subject.convert_to("ft³/h").quantity).to eq(635664.000986795)
    end

    it "converts to in³/s" do
      expect(subject.convert_to("in³/s").quantity).to eq(305118.720473661)
    end

    it "converts to in³/min" do
      expect(subject.convert_to("in³/min").quantity).to eq(1.83071232284197e+7)
    end

    it "converts to in³/h" do
      expect(subject.convert_to("in³/h").quantity).to eq(1.09842739370518e+9)
    end

    it "converts to yd³/s" do
      expect(subject.convert_to("yd³/s").quantity).to eq(6.53975309657196)
    end

    it "converts to yd³/min" do
      expect(subject.convert_to("yd³/min").quantity).to eq(392.385185794318)
    end

    it "converts to yd³/h" do
      expect(subject.convert_to("yd³/h").quantity).to eq(23543.1111476591)
    end

    it "converts to gal/s" do
      expect(subject.convert_to("gal/s").quantity).to eq(1099.84624149544)
    end

    it "converts to gal/min" do
      expect(subject.convert_to("gal/min").quantity).to eq(65990.7744897263)
    end

    it "converts to gal/h" do
      expect(subject.convert_to("gal/h").quantity).to eq(3.95944646938358e+6)
    end
  end
end
