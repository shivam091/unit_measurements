# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/area_spec.rb

RSpec.describe UnitMeasurements::Area do
  describe "m²" do
    subject { described_class.new(5, "m²") }

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(0.05)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(5e+28)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(0.0005)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(0.00123552690733583)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(645.834625002583)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(0.00494210762934331)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(5e-6)
    end

    it "converts to dun" do
      expect(subject.convert_to("dun").quantity).to eq(0.005)
    end

    it "converts to sec" do
      expect(subject.convert_to("sec").quantity).to eq(1.93051079271223e-6)
    end

    it "converts to twp" do
      expect(subject.convert_to("twp").quantity).to eq(5.36252997975619e-8)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(7750.015500031)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(53.8195520835486)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(5.9799502315054)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(1.93051079271223e-6)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(0.0123552690733583)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(0.197684305173732)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(0.000123552690733583)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(123.552690733583)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(0.00123552184612663)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(53.8193368055556)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(1.93050307091494e-6)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(0.0123552184612663)
    end

    it "converts to Aₚ" do
      expect(subject.convert_to("Aₚ").quantity).to eq(1.91416867654378e+70)
    end

    it "converts to sq_ft" do
      expect(subject.convert_to("sq_ft").quantity).to eq(0.538193368055556e2)
    end

    it "converts to sq_mi" do
      expect(subject.convert_to("sq_mi").quantity).to eq(0.193050307091494e-5)
    end

    it "converts to sq_ch" do
      expect(subject.convert_to("sq_ch").quantity).to eq(0.123552184612663e-1)
    end
  end
end
