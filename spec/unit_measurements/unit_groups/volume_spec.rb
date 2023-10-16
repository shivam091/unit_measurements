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
  end
end
