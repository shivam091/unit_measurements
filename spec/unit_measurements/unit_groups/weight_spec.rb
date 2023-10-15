# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/weight_spec.rb

RSpec.describe UnitMeasurements::Weight do
  describe "g" do
    subject { described_class.new(2, "g") }

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(2e-5)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(2e-6)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(10)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(1.20442825802335e+24)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(0.00440924524369755)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(0.000314946088835539)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(0.0705479238991608)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(30.8647167058829)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(1.12876678238657)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(0.064301493137256)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(1.28602986274512)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.000137043738537252)
    end
  end

  describe "q" do
    subject { described_class.new(2, "q") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(2e+5)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(0.2)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(0.1e7)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(1.20442825802335e+29)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(3.08647167058829e+6)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(440.924524369755)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(31.4946088835539)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(7054.79238991608)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(1.12876678238657e+5)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(6430.1493137256)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(1.28602986274512e+5)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(13.7043738537252)
    end
  end

  describe "t" do
    subject { described_class.new(2, "t") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(2e+6)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(20)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(1e+7)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(1.20442825802335e+30)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(3.08647167058829e+7)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(4409.24524369755)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(314.946088835539)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(70547.9238991608)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(1.12876678238657e+6)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(64301.493137256)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(1.28602986274512e+6)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(137.043738537252)
    end
  end

  describe "ct" do
    subject { described_class.new(2, "ct") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(0.4)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(4e-6)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(4e-7)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(2.4088565160467e+23)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(6.17294334117657)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(0.00088184904873951)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(6.29892177671079e-5)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(0.0141095847798322)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(0.225753356477315)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(0.0128602986274512)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(0.257205972549024)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(2.74087477074504e-5)
    end
  end

  describe "Da" do
    subject { described_class.new(2, "Da") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(3.321077842e-24)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(3.321077842e-29)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(3.321077842e-30)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(1.660538921e-23)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(5.12520633757574e-23)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(7.32172333939391e-27)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(5.22980238528137e-28)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(1.17147573430303e-25)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(1.87436117488484e-24)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(1.06775132032828e-25)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(2.13550264065656e-24)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(2.27566461720455e-28)
    end
  end

  describe "gr" do
    subject { described_class.new(2, "gr") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(0.12959782)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(1.2959782e-6)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(1.2959782e-7)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(2.04081632653061e-5)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(0.00457142857142857)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(0.6479891)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(7.80456382931117e+22)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(0.000285714285714286)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(0.0731428571428571)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(0.00416666666666667)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(0.0833333333333333)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(8.88028487953894e-6)
    end
  end

  describe "lb" do
    subject { described_class.new(2, "lb") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(907.18474)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(0.0090718474)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(0.00090718474)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(0.142857142857143)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(0.14e5)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(4535.9237)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(5.46319468051782e+26)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(32)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(512)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(29.1666666666667)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(583.333333333333)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.0621619941567726)
    end
  end

  describe "oz" do
    subject { described_class.new(2, "oz") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(56.69904625)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(0.0005669904625)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(5.669904625e-5)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(0.00892857142857143)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(875)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(283.49523125)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(3.41449667532364e+25)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(0.125)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(32)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(1.82291666666667)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(36.4583333333333)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.00388512463479828)
    end
  end

  describe "st" do
    subject { described_class.new(2, "st") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(0.1270058636e5)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(0.1270058636)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(0.01270058636)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(0.196e6)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(63502.9318)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(28)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(7.64847255272495e+27)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(448)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(0.7168e4)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(408.333333333333)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(8166.66666666667)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.870267918194816)
    end
  end

  describe "dr" do
    subject { described_class.new(2, "dr") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(3.543690390625)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(3.543690390625e-5)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(3.543690390625e-6)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(0.000558035714285714)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(54.6875)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(17.718451953125)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(0.0078125)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(2.13406042207727e+24)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(0.125)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(0.113932291666667)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(2.27864583333333)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.000242820289674893)
    end
  end

  describe "ozt" do
    subject { described_class.new(2, "ozt") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(62.2069536)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(0.000622069536)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(6.22069536e-5)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(0.00979591836734694)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(2.19428571428571)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(311.034768)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(35.1085714285714)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(3.74619063806936e+25)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(0.137142857142857)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(960)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(40)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.00426253674217869)
    end
  end

  describe "dwt" do
    subject { described_class.new(2, "dwt") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(3.11034768)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(3.11034768e-5)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(3.11034768e-6)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(0.000489795918367347)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(0.109714285714286)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(15.5517384)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(1.75542857142857)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(1.87309531903468e+24)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(0.00685714285714286)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(48)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(0.1)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.000213126837108934)
    end
  end

  describe "slug" do
    subject { described_class.new(2, "slug") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(29187.76182476)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(0.2918776182476)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(0.02918776182476)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(4.59628571428571)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(1029.568)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(1.459388091238e+5)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(1.6473088e+4)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(1.7577282565098e+28)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(64.348)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(4.50436e+5)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(18768.1666666667)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(938.408333333333)
    end
  end
end
