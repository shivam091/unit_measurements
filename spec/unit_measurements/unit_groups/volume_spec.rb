# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/volume_spec.rb

RSpec.describe UnitMeasurements::Volume do
  describe "l" do
    subject { described_class.new(10, "l") }

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.01)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1e+7)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(10000)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(10)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1e-11)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(610.237440947323)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.353146667214886)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.0130795061931439)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.39912758578928e-12)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(35.195079727854)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(8.79876993196351)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(70.3901594557081)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(17.597539863927)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(2.19969248299088)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.0611025689719688)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(1689.36382693699)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(563.121275645665)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(351.95079727854)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.549923120747719)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.27496156037386)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(168936.382693699)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.0305512844859844)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(1.09984624149544)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(8446.81913468497)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(2815.60637822832)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.00163493827414299)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(1.0136182961622e+5)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(1000)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(4.23776000657863)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(8.10713193789913e-6)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(9.72855832547895e-5)
    end
  end

  describe "m³" do
    subject { described_class.new(10, "m³") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(1e+4)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1e+10)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(1e+7)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(1e+4)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1e-8)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(6.10237440947323e+5)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(353.146667214886)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(13.0795061931439)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.39912758578928e-9)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(35195.079727854)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(8798.76993196351)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(70390.1594557081)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(17597.539863927)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(2199.69248299088)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(61.1025689719688)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(1.68936382693699e+6)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(5.63121275645665e+5)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(3.5195079727854e+5)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(549.923120747719)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(274.96156037386)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(1.68936382693699e+8)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(30.5512844859844)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(1099.84624149544)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(8.44681913468497e+6)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(2.81560637822832e+6)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(1.63493827414299)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(1.0136182961622e+8)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(1e+6)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(4237.76000657863)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(0.00810713193789913)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.0972855832547895)
    end
  end

  describe "mm³" do
    subject { described_class.new(10, "mm³") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(1e-5)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(1e-8)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(0.01)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(1e-5)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1e-17)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(0.000610237440947323)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(3.53146667214886e-7)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(1.30795061931439e-8)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.39912758578928e-18)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(0.000035195079727854)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(8.79876993196351e-6)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(0.0000703901594557081)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(0.000017597539863927)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(2.19969248299088e-6)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(6.11025689719688e-8)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(0.00168936382693699)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(0.000563121275645665)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(0.000351950797278541)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(5.4992312074772e-7)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(2.7496156037386e-7)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(0.168936382693699)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(3.05512844859844e-8)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(1.09984624149544e-6)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(0.00844681913468497)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(0.00281560637822832)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(1.63493827414299e-9)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(0.10136182961622)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(0.001)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(4.23776000657863e-6)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(8.10713193789913e-12)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(9.72855832547895e-11)
    end
  end

  describe "cm³" do
    subject { described_class.new(10, "cm³") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(0.01)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(1e-5)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(10000)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(0.01)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1e-14)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(0.610237440947323)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.000353146667214886)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(1.30795061931439e-5)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.39912758578928e-15)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(0.035195079727854)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(0.00879876993196351)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(0.0703901594557081)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(0.017597539863927)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(0.00219969248299088)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.0000611025689719688)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(1.68936382693699)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(0.563121275645665)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(0.35195079727854)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.000549923120747719)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.00027496156037386)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(168.936382693699)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.0000305512844859844)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.00109984624149544)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(8.44681913468497)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(2.81560637822832)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(1.63493827414299e-6)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(101.36182961622)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(1)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(0.00423776000657863)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(8.10713193789913e-9)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(9.72855832547895e-8)
    end
  end

  describe "dm³" do
    subject { described_class.new(10, "dm³") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(10)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.01)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1e+7)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(10000)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1e-11)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(610.237440947323)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.353146667214886)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.0130795061931439)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.39912758578928e-12)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(35.195079727854)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(8.79876993196351)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(70.3901594557081)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(17.597539863927)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(2.19969248299088)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.0611025689719688)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(1689.36382693699)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(563.121275645665)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(351.95079727854)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.549923120747719)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.27496156037386)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(1.68936382693699e+5)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.0305512844859844)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(1.09984624149544)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(8446.81913468497)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(2815.60637822832)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.00163493827414299)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(1.0136182961622e+5)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(1000)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(4.23776000657863)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(8.10713193789913e-6)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(9.72855832547895e-5)
    end
  end

  describe "km³" do
    subject { described_class.new(10, "km³") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(1e+13)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(1e+10)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1e+19)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(1e+16)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(1e+13)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(6.10237440947323e+14)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(3.53146667214886e+11)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(1.30795061931439e+10)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.39912758578928)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(3.5195079727854e+13)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(8.79876993196351e+12)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(7.03901594557081e+13)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(1.7597539863927e+13)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(2.19969248299088e+12)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(6.11025689719688e+10)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(1.68936382693699e+15)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(5.63121275645665e+14)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(3.5195079727854e+14)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(5.49923120747719e+11)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(2.7496156037386e+11)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(1.68936382693699e+17)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(3.05512844859844e+10)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(1.09984624149544e+12)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(8.44681913468497e+15)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(2.81560637822832e+15)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(1.63493827414299e+9)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(1.0136182961622e+17)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(1e+15)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(4237760006578.63)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(8107131.93789913)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(97285583.2547895)
    end
  end

  describe "in³" do
    subject { described_class.new(10, "in³") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(0.16387064)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.00016387064)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1.6387064e+5)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(163.87064)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(0.16387064)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1.6387064e-13)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.00578703703703704)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.000214334705075446)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(3.93146572924944e-14)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(0.576744023985447)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(0.144186005996362)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(1.15348804797089)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(0.288372011992723)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(0.0360465014990904)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.00100129170830807)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(27.6837131513014)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(9.22790438376715)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(5.76744023985447)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.00901162537477261)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.0045058126873863)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(2768.37131513014)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.000500645854154034)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.0180232507495452)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(138.418565756507)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(46.1395219188357)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.0000267918381344307)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(1661.02278907809)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(16.387064)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(0.0694444444444444)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(1.32852089922797e-7)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(1.59422507907356e-6)
    end
  end

  describe "ft³" do
    subject { described_class.new(10, "ft³") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(283.16846592)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.28316846592)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(2.8316846592e+8)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(2.8316846592e+5)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(283.16846592)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(2.8316846592e-10)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(17280)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.37037037037037)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(6.79357278014303e-11)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(996.613673446852)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(249.153418361713)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(1993.2273468937)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(498.306836723426)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(62.2883545904283)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(1.73023207195634)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(47837.4563254489)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(15945.8187751496)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(9966.13673446852)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(15.5720886476071)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(7.78604432380353)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(4.78374563254489e+6)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.86511603597817)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(31.1441772952141)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(2.39187281627245e+5)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(79729.0938757482)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.0462962962962963)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(2.87024737952693e+6)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(28316.846592)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(120)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(0.000229568411386593)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.00275482093663912)
    end
  end

  describe "yd³" do
    subject { described_class.new(10, "yd³") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(7645.54857984)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(7.64554857984)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(7.64554857984e+9)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(7.64554857984e+6)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(7645.54857984)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(7.64554857984e-9)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(466560)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(270)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(1.83426465063862e-9)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(26908.569183065)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(6727.14229576625)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(53817.13836613)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(13454.2845915325)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(1681.78557394156)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(46.7162659428212)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(1.29161132078712e+6)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(4.3053710692904e+5)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(2.6908569183065e+5)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(420.446393485391)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(210.223196742695)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(1.29161132078712e+8)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(23.3581329714106)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(840.892786970781)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(6.4580566039356e+6)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(2.1526855346452e+6)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(1.25)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(7.74966792472272e+7)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(7.64554857984e+5)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(3240)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(0.00619834710743802)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.0743801652892562)
    end
  end

  describe "mi³" do
    subject { described_class.new(10, "mi³") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(4.16818182544058e+13)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(4.16818182544058e+10)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(4.16818182544058e+19)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(4.16818182544058e+16)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(4.16818182544058e+13)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(41.6818182544058)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(2.54358061056e+15)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(1.47197952e+12)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(5.451776e+10)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(1.46699491666573e+14)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(3.66748729166434e+13)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(2.93398983333147e+14)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(7.33497458332867e+13)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(9.16871822916084e+12)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(2.5468661747669e+11)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(7.04157559999552e+15)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(2.34719186666517e+15)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(1.46699491666573e+15)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(2.29217955729021e+12)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(1.1460897786451e+12)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(7.04157559999552e+17)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(1.27343308738345e+11)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(4.58435911458042e+12)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(3.52078779999776e+16)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(1.17359593333259e+16)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(6.81472e+9)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(4.22494535999731e+17)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(4.16818182544058e+15)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(1.766375424e+13)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(3.3792e+7)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(4.05504e+8)
    end
  end

  describe "c" do
    subject { described_class.new(10, "c") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(2.84130625)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.00284130625)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(2.84130625e+6)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(2841.30625)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(2.84130625)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(2.84130625e-12)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(173.387145494763)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.100339783272433)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.00371628826934935)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(6.81665620405049e-13)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(2.5)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(20)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(5)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(0.625)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.0173611111111111)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(480)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(160)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(100)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.15625)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.078125)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(48000)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.00868055555555556)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.3125)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(2400)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(800)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.000464536033668669)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(28800)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(284.130625)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(1.20407739926919)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(2.30348446447274e-6)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(2.76418135736729e-5)
    end
  end

  describe "qt" do
    subject { described_class.new(10, "qt") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(11.365225)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.011365225)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1.1365225e+7)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(11365.225)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(11.365225)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1.1365225e-11)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(693.548581979054)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.40135913308973)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.0148651530773974)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.72666248162019e-12)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(40)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(80)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(20)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(2.5)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.0694444444444444)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(1920)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(640)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(400)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.625)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.3125)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(1.92e+5)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.0347222222222222)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(1.25)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(9600)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(3200)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.00185814413467468)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(1.152e+5)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(1136.5225)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(4.81630959707676)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(9.21393785789096e-6)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.000110567254294692)
    end
  end

  describe "gi" do
    subject { described_class.new(10, "gi") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(1.420653125)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.001420653125)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1.420653125e+6)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(1420.653125)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(1.420653125)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1.420653125e-12)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(86.6935727473817)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.0501698916362163)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.00185814413467468)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(3.40832810202524e-13)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(5)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(1.25)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(2.5)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(0.3125)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.00868055555555556)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(240)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(80)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(50)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.078125)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.0390625)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(24000)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.00434027777777778)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.15625)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(1200)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(400)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.000232268016834335)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(14400)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(142.0653125)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(0.602038699634595)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(1.15174223223637e-6)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(1.38209067868364e-5)
    end
  end

  describe "pt" do
    subject { described_class.new(10, "pt") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(5.6826125)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.0056826125)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(5.6826125e+6)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(5682.6125)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(5.6826125)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(5.6826125e-12)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(346.774290989527)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.200679566544865)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.00743257653869871)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(1.3633312408101e-12)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(20)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(5)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(40)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(1.25)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.0347222222222222)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(960)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(320)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(200)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.3125)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.15625)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(96000)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.0173611111111111)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.625)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(4800)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(1600)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.000929072067337338)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(57600)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(568.26125)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(2.40815479853838)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(4.60696892894548e-6)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(5.52836271473458e-5)
    end
  end

  describe "gal" do
    subject { described_class.new(10, "gal") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(45.4609)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.0454609)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(4.54609e+7)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(45460.9)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(45.4609)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(4.54609e-11)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(2774.19432791622)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(1.60543653235892)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.0594606123095897)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(1.09066499264808e-11)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(160)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(40)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(320)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(80)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.277777777777778)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(7680)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(2560)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(1600)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(2.5)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(1.25)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(7.68e+5)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.138888888888889)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(5)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(38400)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(12800)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.00743257653869871)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(4.608e+5)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(4546.09)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(19.265238388307)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(3.68557514315638e-5)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.000442269017178766)
    end
  end

  describe "bbl" do
    subject { described_class.new(10, "bbl") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(1636.5924)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(1.6365924)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1.6365924e+9)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(1.6365924e+6)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(1.6365924e+3)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1.6365924e-9)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(99870.9958049837)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(57.7957151649211)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(2.14058204314523)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(3.92639397353308e-10)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(5760)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(1440)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(11520)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(2880)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(360)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(2.7648e+5)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(92160)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(57600)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(90)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(45)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(2.7648e+7)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(5)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(180)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(1.3824e+6)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(4.608e+5)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.267572755393153)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(1.65888e+7)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(1.6365924e+5)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(693.548581979054)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(0.0013268070515363)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.0159216846184356)
    end
  end

  describe "tsp" do
    subject { described_class.new(10, "tsp") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(0.0591938802083333)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.0000591938802083333)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(59193.8802083333)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(59.1938802083333)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(0.0591938802083333)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(5.91938802083333e-14)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(3.61223219780757)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.00209041215150901)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.0000774226722781115)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(1.42013670917718e-14)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(0.208333333333333)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(0.0520833333333333)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(0.416666666666667)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(0.104166666666667)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(0.0130208333333333)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.000361689814814815)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(3.33333333333333)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(2.08333333333333)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.00325520833333333)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.00162760416666667)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(1000)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.000180844907407407)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.00651041666666667)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(50)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(16.6666666666667)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(9.67783403476394e-6)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(600)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(5.91938802083333)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(0.0250849458181081)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(4.79892596765154e-8)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(5.75871116118185e-7)
    end
  end

  describe "tbsp" do
    subject { described_class.new(10, "tbsp") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(0.177581640625)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.000177581640625)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1.77581640625e+5)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(177.581640625)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(0.177581640625)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1.77581640625e-13)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(10.8366965934227)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.00627123645452703)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.000232268016834335)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(4.26041012753155e-14)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(0.625)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(0.15625)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(1.25)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(0.3125)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(0.0390625)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.00108506944444444)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(30)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(6.25)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.009765625)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.0048828125)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(3000)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.000542534722222222)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.01953125)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(150)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(50)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.0000290335021042918)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(1800)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(17.7581640625)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(0.0752548374543244)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(1.43967779029546e-7)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(1.72761334835455e-6)
    end
  end

  describe "floz" do
    subject { described_class.new(10, "floz") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(0.284130625)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.000284130625)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(2.84130625e+5)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(284.130625)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(0.284130625)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(2.84130625e-13)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(17.3387145494763)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.0100339783272433)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.000371628826934935)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(6.81665620405049e-14)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(1)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(0.25)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(2)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(0.5)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(0.0625)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.00173611111111111)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(48)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(16)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.015625)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.0078125)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(4800)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.000868055555555556)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.03125)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(240)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(80)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.0000464536033668669)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(2880)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(28.4130625)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(0.120407739926919)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(2.30348446447274e-7)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(2.76418135736729e-6)
    end
  end

  describe "bkt" do
    subject { described_class.new(10, "bkt") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(181.8436)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.1818436)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1.818436e+8)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(1.818436e+5)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(181.8436)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1.818436e-10)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(11096.7773116649)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(6.42174612943568)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.237842449238359)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(4.36265997059231e-11)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(640)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(160)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(1280)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(320)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(40)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(1.11111111111111)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(30720)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(10240)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(6400)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(5)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(3.072e+6)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.555555555555556)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(20)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(1.536e+5)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(51200)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.0297303061547948)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(1.8432e+6)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(18184.36)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(77.0609535532282)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(0.000147423005726255)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.00176907606871506)
    end
  end

  describe "bsh" do
    subject { described_class.new(10, "bsh") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(363.6872)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.3636872)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(3.636872e+8)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(3.636872e+5)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(363.6872)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(3.636872e-10)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(22193.5546233297)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(12.8434922588714)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.475684898476717)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(8.72531994118462e-11)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(1280)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(320)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(2560)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(640)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(80)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(2.22222222222222)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(61440)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(20480)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(12800)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(20)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(6.144e+6)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(1.11111111111111)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(40)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(3.072e+5)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(1.024e+5)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.0594606123095897)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(3.6864e+6)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(36368.72)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(154.121907106456)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(0.000294846011452511)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.00353815213743013)
    end
  end

  describe "min" do
    subject { described_class.new(10, "min") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(0.000591938802083333)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(5.91938802083333e-7)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(591.938802083333)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(0.591938802083333)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(0.000591938802083333)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(5.91938802083333e-16)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(0.0361223219780757)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.0000209041215150901)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(7.74226722781115e-7)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(1.42013670917718e-16)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(0.00208333333333333)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(0.000520833333333333)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(0.00416666666666667)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(0.00104166666666667)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(0.000130208333333333)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(3.61689814814815e-6)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(0.1)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(0.0333333333333333)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(0.0208333333333333)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.0000325520833333333)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.0000162760416666667)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(1.80844907407407e-6)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.0000651041666666667)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(0.5)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(0.166666666666667)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(9.67783403476394e-8)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(6)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(0.0591938802083333)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(0.000250849458181081)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(4.79892596765154e-10)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(5.75871116118185e-9)
    end
  end

  describe "hhd" do
    subject { described_class.new(10, "hhd") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(3273.1848)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(3.2731848)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(3.2731848e+9)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(3.2731848e+6)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(3273.1848)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(3.2731848e-9)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(1.99741991609967e+5)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(115.591430329842)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(4.28116408629046)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(7.85278794706616e-10)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(11520)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(2880)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(23040)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(5760)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(720)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(20)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(5.5296e+5)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(1.8432e+5)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(1.152e+5)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(180)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(90)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(5.5296e+7)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(360)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(2.7648e+6)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(9.216e+5)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.535145510786307)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(3.31776e+7)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(3.2731848e+5)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(1387.09716395811)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(0.0026536141030726)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.0318433692368712)
    end
  end

  describe "pk" do
    subject { described_class.new(10, "pk") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(90.9218)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.0909218)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(9.09218e+7)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(90921.8)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(90.9218)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(9.09218e-11)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(5548.38865583243)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(3.21087306471784)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.118921224619179)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.18132998529616e-11)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(320)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(80)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(640)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(160)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(20)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.555555555555556)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(15360)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(5120)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(3200)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(5)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(2.5)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(1.536e+6)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.277777777777778)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(76800)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(25600)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.0148651530773974)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(9.216e+5)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(9092.18)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(38.5304767766141)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(7.37115028631277e-5)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.000884538034357532)
    end
  end

  describe "fls" do
    subject { described_class.new(10, "fls") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(0.0118387760416667)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.0000118387760416667)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(11838.7760416667)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(11.8387760416667)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(0.0118387760416667)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1.18387760416667e-14)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(0.722446439561514)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.000418082430301802)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.0000154845344556223)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.84027341835437e-15)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(0.0416666666666667)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(0.0104166666666667)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(0.0833333333333333)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(0.0208333333333333)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(0.00260416666666667)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.000072337962962963)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(2)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(0.666666666666667)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(0.416666666666667)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.000651041666666667)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.000325520833333333)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(200)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.0000361689814814815)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.00130208333333333)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(3.33333333333333)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(1.93556680695279e-6)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(120)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(1.18387760416667)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(0.00501698916362163)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(9.59785193530308e-9)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(1.15174223223637e-7)
    end
  end

  describe "fldr" do
    subject { described_class.new(10, "fldr") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(0.035516328125)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.000035516328125)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(35516.328125)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(35.516328125)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(0.035516328125)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(3.5516328125e-14)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(2.16733931868454)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.00125424729090541)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.0000464536033668669)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(8.52082025506311e-15)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(0.125)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(0.03125)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(0.25)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(0.0625)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(0.0078125)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.000217013888888889)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(6)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(2)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(1.25)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.001953125)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.0009765625)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(600)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.000108506944444444)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.00390625)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(30)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(5.80670042085836e-6)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(360)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(3.5516328125)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(0.0150509674908649)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(2.87935558059092e-8)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(3.45522669670911e-7)
    end
  end

  describe "ftm³" do
    subject { described_class.new(10, "ftm³") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(61164.38863872)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(61.16438863872)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(6.116438863872e+10)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(6.116438863872e+7)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(61164.38863872)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(6.116438863872e-8)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(3.73248e+6)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(2160)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(80)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(1.46741172051089e-8)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(2.1526855346452e+5)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(53817.13836613)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(4.3053710692904e+5)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(1.0763427673226e+5)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(13454.2845915325)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(373.73012754257)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(1.0332890566297e+7)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(3.44429685543232e+6)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(2.1526855346452e+6)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(3363.57114788313)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(1681.78557394156)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(1.0332890566297e+9)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(186.865063771285)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(6727.14229576625)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(5.16644528314848e+7)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(1.72214842771616e+7)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(6.19973433977818e+8)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(6.116438863872e+6)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(25920)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(0.0495867768595041)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.59504132231405)
    end
  end

  describe "gt" do
    subject { described_class.new(10, "gt") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(0.000986564670138889)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(9.86564670138889e-7)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(986.564670138889)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(0.986564670138889)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(0.000986564670138889)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(9.86564670138889e-16)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(0.0602038699634595)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.0000348402025251502)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(1.29037787130186e-6)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.36689451529531e-16)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(0.00347222222222222)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(0.000868055555555556)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(0.00694444444444444)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(0.00173611111111111)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(0.000217013888888889)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(6.02816358024691e-6)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(0.166666666666667)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(0.0555555555555556)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(0.0347222222222222)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.0000542534722222222)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.0000271267361111111)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(16.6666666666667)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(3.01408179012346e-6)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.000108506944444444)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(0.833333333333333)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(0.277777777777778)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(1.61297233912732e-7)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(0.0986564670138889)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(0.000418082430301802)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(7.9982099460859e-10)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(9.59785193530308e-9)
    end
  end

  describe "dsp" do
    subject { described_class.new(10, "dsp") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(0.1)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.0001)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1e+5)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(100)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(0.1)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1e-13)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(6.10237440947323)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.00353146667214886)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.000130795061931439)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.39912758578928e-14)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(0.35195079727854)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(0.0879876993196351)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(0.703901594557081)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(0.17597539863927)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(0.0219969248299088)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.000611025689719688)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(16.8936382693699)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(5.63121275645665)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(3.5195079727854)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(0.00549923120747719)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.0027496156037386)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(1689.36382693699)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.000305512844859844)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(0.0109984624149544)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(84.4681913468497)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(28.1560637822832)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.0000163493827414299)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(1013.6182961622)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(0.0423776000657863)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(8.10713193789913e-8)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(9.72855832547895e-7)
    end
  end

  describe "bdft" do
    subject { described_class.new(10, "bdft") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(23.59737216)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(0.02359737216)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(2.359737216e+7)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(23597.37216)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(23.59737216)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(2.359737216e-11)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(1440)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(0.833333333333333)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(0.0308641975308642)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(5.66131065011919e-12)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(83.0511394539043)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(20.7627848634761)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(166.102278907809)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(41.5255697269522)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(5.19069621586902)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(0.144186005996362)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(3986.45469378741)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(1328.81823126247)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(830.511394539043)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(1.29767405396726)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(0.648837026983628)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(3.98645469378741e+5)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(0.0720930029981809)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(2.59534810793451)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(19932.273468937)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(6644.09115631235)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(0.00385802469135802)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(2.39187281627245e+5)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(2359.737216)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(1.91307009488828e-5)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(0.000229568411386593)
    end
  end

  describe "ac⋅ft" do
    subject { described_class.new(10, "ac⋅ft") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(1.23348183754752e+7)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(12334.8183754752)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1.23348183754752e+13)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(1.23348183754752e+10)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(1.23348183754752e+7)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1.23348183754752e-5)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(7.527168e+8)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(4.356e+5)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(16133.3333333333)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.9592803030303e-6)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(4.34124916153449e+7)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(1.08531229038362e+7)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(8.68249832306897e+7)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(2.17062458076724e+7)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(2.71328072595905e+6)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(75368.9090544182)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(2.08379959753655e+9)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(6.94599865845518e+8)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(4.34124916153449e+8)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(678320.181489764)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(339160.090744882)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(2.08379959753655e+11)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(37684.4545272091)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(1.35664036297953e+6)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(1.04189979876828e+10)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(3.47299932922759e+9)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(2016.66666666667)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(1.25027975852193e+11)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(1.23348183754752e+9)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(5.2272e+6)
    end

    it "converts to ac⋅in" do
      expect(subject.convert_to("ac⋅in").quantity).to eq(120)
    end
  end

  describe "ac⋅in" do
    subject { described_class.new(10, "ac⋅in") }

    it "converts to l" do
      expect(subject.convert_to("l").quantity).to eq(1.0279015312896e+6)
    end

    it "converts to m³" do
      expect(subject.convert_to("m³").quantity).to eq(1027.9015312896)
    end

    it "converts to mm³" do
      expect(subject.convert_to("mm³").quantity).to eq(1.0279015312896e+12)
    end

    it "converts to cm³" do
      expect(subject.convert_to("cm³").quantity).to eq(1.0279015312896e+9)
    end

    it "converts to dm³" do
      expect(subject.convert_to("dm³").quantity).to eq(1.0279015312896e+6)
    end

    it "converts to km³" do
      expect(subject.convert_to("km³").quantity).to eq(1.0279015312896e-6)
    end

    it "converts to in³" do
      expect(subject.convert_to("in³").quantity).to eq(6.2726400e+7)
    end

    it "converts to ft³" do
      expect(subject.convert_to("ft³").quantity).to eq(36300)
    end

    it "converts to yd³" do
      expect(subject.convert_to("yd³").quantity).to eq(1344.44444444444)
    end

    it "converts to mi³" do
      expect(subject.convert_to("mi³").quantity).to eq(2.46606691919192e-7)
    end

    it "converts to c" do
      expect(subject.convert_to("c").quantity).to eq(3.61770763461207e+6)
    end

    it "converts to qt" do
      expect(subject.convert_to("qt").quantity).to eq(9.04426908653018e+5)
    end

    it "converts to gi" do
      expect(subject.convert_to("gi").quantity).to eq(7.23541526922415e+6)
    end

    it "converts to pt" do
      expect(subject.convert_to("pt").quantity).to eq(1.80885381730604e+6)
    end

    it "converts to gal" do
      expect(subject.convert_to("gal").quantity).to eq(2.26106727163255e+5)
    end

    it "converts to bbl" do
      expect(subject.convert_to("bbl").quantity).to eq(6280.74242120152)
    end

    it "converts to tsp" do
      expect(subject.convert_to("tsp").quantity).to eq(1.73649966461379e+8)
    end

    it "converts to tbsp" do
      expect(subject.convert_to("tbsp").quantity).to eq(5.78833221537932e+7)
    end

    it "converts to floz" do
      expect(subject.convert_to("floz").quantity).to eq(3.61770763461207e+7)
    end

    it "converts to bkt" do
      expect(subject.convert_to("bkt").quantity).to eq(56526.6817908136)
    end

    it "converts to bsh" do
      expect(subject.convert_to("bsh").quantity).to eq(28263.3408954068)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(1.7364996646138e+10)
    end

    it "converts to hhd" do
      expect(subject.convert_to("hhd").quantity).to eq(3140.37121060076)
    end

    it "converts to pk" do
      expect(subject.convert_to("pk").quantity).to eq(1.13053363581627e+5)
    end

    it "converts to fls" do
      expect(subject.convert_to("fls").quantity).to eq(8.68249832306898e+8)
    end

    it "converts to fldr" do
      expect(subject.convert_to("fldr").quantity).to eq(2.89416610768966e+8)
    end

    it "converts to ftm³" do
      expect(subject.convert_to("ftm³").quantity).to eq(168.055555555556)
    end

    it "converts to gt" do
      expect(subject.convert_to("gt").quantity).to eq(1.04189979876828e+10)
    end

    it "converts to dsp" do
      expect(subject.convert_to("dsp").quantity).to eq(1.0279015312896e+8)
    end

    it "converts to bdft" do
      expect(subject.convert_to("bdft").quantity).to eq(4.356e+5)
    end

    it "converts to ac⋅ft" do
      expect(subject.convert_to("ac⋅ft").quantity).to eq(0.833333333333333)
    end
  end
end
