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
      expect(subject.convert_to("slug").quantity).to eq(0.000137043531698379)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(0.0196133)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(1.54323583529414)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(0.514411945098048)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(0.005358457761438)
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
      expect(subject.convert_to("slug").quantity).to eq(13.7043531698379)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(1961.33)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(1.54323583529414e+5)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(51441.1945098048)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(535.8457761438)
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
      expect(subject.convert_to("slug").quantity).to eq(137.043531698379)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(19613.3)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(1.54323583529414e+6)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(5.14411945098048e+5)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(5358.457761438)
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
      expect(subject.convert_to("slug").quantity).to eq(2.74087063396758e-05)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(0.00392266)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(0.308647167058829)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(0.10288238901961)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(0.0010716915522876)
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
      expect(subject.convert_to("slug").quantity).to eq(2.27566118256456e-28)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(3.25686480192493e-26)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(2.56260316878787e-24)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(8.54201056262623e-25)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(8.89792766940233e-27)
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
      expect(subject.convert_to("slug").quantity).to eq(8.88027147660542e-06)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(0.001270920461503)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(0.1)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(0.0333333333333333)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(0.000347222222222222)
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
      expect(subject.convert_to("slug").quantity).to eq(0.0621619003362379)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(8.896443230521)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(700)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(233.333333333333)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(2.43055555555556)
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
      expect(subject.convert_to("slug").quantity).to eq(0.00388511877101487)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(0.556027701907562)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(43.75)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(14.5833333333333)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(0.151909722222222)
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
      expect(subject.convert_to("slug").quantity).to eq(0.870266604707331)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(124.550205227294)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(9800)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(3266.66666666667)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(34.0277777777778)
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
      expect(subject.convert_to("slug").quantity).to eq(0.000242819923188429)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(0.0347517313692227)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(2.734375)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(0.911458333333333)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(0.00949435763888889)
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
      expect(subject.convert_to("slug").quantity).to eq(0.0042625303087706)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(0.61004182152144)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(48)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(16)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(0.166666666666667)
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
      expect(subject.convert_to("slug").quantity).to eq(0.00021312651543853)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(0.030502091076072)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(2.4)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(0.8)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(0.00833333333333333)
    end
  end

  describe "slug" do
    subject { described_class.new(2, "slug") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(29187.805877651)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(0.29187805877651)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(0.029187805877651)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(4.59629265142857)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(1029.56955392)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(1.45939029388255e+5)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(16473.11286272)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(1.75773090943714e+28)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(64.34809712)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(4.5043667984e+5)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(18768.1949933333)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(938.409749666667)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(286.234596510066)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(22521.833992)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(7507.27799733333)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(78.2008124722222)
    end
  end

  describe "N" do
    subject { described_class.new(2, "N") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(203.943242595586)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(0.00203943242595586)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(0.000203943242595586)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(0.0321155632999586)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(7.19388617919074)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(1019.71621297793)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(115.102178867052)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(1.22817502207517e+26)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(0.449617886199421)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(3147.32520339595)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(131.138550141498)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(6.55692750707489)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.0139745511156592)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(157.366260169797)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(52.4554200565991)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(0.546410625589574)
    end
  end

  describe "s" do
    subject { described_class.new(2, "s") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(2.5919564)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(2.5919564e-5)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(2.5919564e-6)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(0.000408163265306122)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(0.0914285714285714)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(12.959782)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(1.46285714285714)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(1.56091276586223e+24)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(0.00571428571428571)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(40)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(1.66666666666667)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(0.0833333333333333)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.000177605429532108)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(0.02541840923006)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(0.666666666666667)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(0.00694444444444444)
    end
  end

  describe "drt" do
    subject { described_class.new(2, "drt") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(7.7758692)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(7.7758692e-5)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(7.7758692e-6)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(0.00122448979591837)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(0.274285714285714)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(38.879346)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(4.38857142857143)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(4.6827382975867e+24)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(0.0171428571428571)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(120)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(5)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(0.25)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.000532816288596325)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(0.07625522769018)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(6)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(0.0208333333333333)
    end
  end

  describe "lbt" do
    subject { described_class.new(2, "lbt") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(746.4834432)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(0.007464834432)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(0.0007464834432)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(0.117551020408163)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(26.3314285714286)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(3732.417216)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(421.302857142857)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(4.49542876568323e+26)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(1.64571428571429)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(11520)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(480)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(24)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.0511503637052472)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(7.32050185825728)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(576)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(192)
    end
  end
end
