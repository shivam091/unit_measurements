# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/volume_spec.rb

RSpec.describe UnitMeasurements::Volume do
  describe "m³" do
    subject { described_class.new(5, "m³") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(5000)
    end

    it "converts to λ" do
      expect(subject.convert_to("λ").quantity).to eq(5e+9)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(5e+9)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(5e+6)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(5000)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(5e-9)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(3.05118720473661e+5)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(176.573333607443)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(6.53975309657196)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(1.19956379289464e-9)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.817469137071495)
    end

    it "converts to Vₚ" do
      expect(subject.convert_to("Vₚ").quantity).to eq(1.18435701257787e+105)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(17597.539863927)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(4399.38496598176)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(35195.079727854)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(8798.76993196351)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(549.923120747719)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(5.06809148081098e+7)
    end

    it "converts to cd" do
      expect(subject.convert_to("cd").quantity).to eq(1.37947916880815)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(1099.84624149544)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(30.5512844859844)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(5e+5)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(8.44681913468497e+5)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(274.96156037386)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(137.48078018693)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(8.44681913468497e+7)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(15.2756422429922)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(4.22340956734249e+6)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(2.81560637822832e+5)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(1.7597539863927e+5)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(1.40780318911416e+6)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(2118.88000328932)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(0.00405356596894956)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.0486427916273948)
    end

    it "converts to cd-ft" do
      expect(subject.convert_to("cd-ft").quantity).to eq(11.0358333504652)
    end
  end
end
