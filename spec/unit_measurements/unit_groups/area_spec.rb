# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/area_spec.rb

RSpec.describe UnitMeasurements::Area do
  describe "m²" do
    subject { described_class.new(2, "m²") }

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(0.02)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(2e+28)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(0.0002)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(0.000494210762934331)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(2e-6)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(3100.0062000124)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(21.5278208334194)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(2.39198009260216)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(7.72204317084892e-7)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(0.00494210762934331)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(4.94210762934331e-5)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(0.0790737220694929)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(258.333850001033)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(0.00197684305173732)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(49.4210762934331)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(0.000494208738450651)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(21.5277347222222)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(7.72201228365977e-7)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(0.00494208738450651)
    end
  end

  describe "a" do
    subject { described_class.new(2, "a") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(200)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(2e+30)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(0.02)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(0.0494210762934331)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(0.0002)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(3.1000062000124e+5)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(2152.78208334194)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(239.198009260216)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(7.72204317084892e-5)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(0.494210762934331)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(0.00494210762934331)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(7.90737220694929)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(25833.3850001033)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(0.197684305173732)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(4942.10762934331)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(0.0494208738450651)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(2152.77347222222)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(7.72201228365977e-5)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(0.494208738450651)
    end
  end

  describe "b" do
    subject { described_class.new(2, "b") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(2e-28)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(2e-30)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(2e-32)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(4.94210762934331e-32)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(2e-34)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(3.1000062000124e-25)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(2.15278208334194e-27)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(2.39198009260216e-28)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(7.72204317084892e-35)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(4.94210762934331e-31)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(4.94210762934331e-33)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(7.90737220694929e-30)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(2.58333850001033e-26)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(1.97684305173732e-31)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(4.94210762934331e-27)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(4.94208738450651e-32)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(2.15277347222222e-27)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(7.72201228365977e-35)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(4.94208738450651e-31)
    end
  end

  describe "ha" do
    subject { described_class.new(2, "ha") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(20000)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(200)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(2e+32)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(4.94210762934331)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(0.02)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(3.1000062000124e+7)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(2.15278208334194e+5)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(23919.8009260216)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(0.00772204317084892)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(49.4210762934331)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(0.494210762934331)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(790.737220694929)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(2.58333850001033e+6)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(19.7684305173732)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(4.94210762934331e+5)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(4.94208738450651)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(2.15277347222222e+5)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(0.00772201228365977)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(49.4208738450651)
    end
  end

  describe "ac" do
    subject { described_class.new(2, "ac") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(8093.7128448)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(80.937128448)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(8.0937128448e+31)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(0.80937128448)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(0.0080937128448)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(1.254528e+7)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(87120)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(9680)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(0.003125)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(20)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(0.2)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(320)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(1045440)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(8)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(200000)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(1.99999180720522)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(87119.6515203485)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(0.00312498750039802)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(19.9999180720522)
    end
  end

  describe "km²" do
    subject { described_class.new(2, "km²") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(2e+6)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(20000)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(2e+34)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(200)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(494.210762934331)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(3.1000062000124e+9)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(2.15278208334194e+7)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(2.39198009260216e+6)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(0.772204317084892)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(4942.10762934331)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(49.4210762934331)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(79073.7220694929)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(2.58333850001033e+8)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(1976.84305173732)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(4.94210762934331e+7)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(494.208738450651)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(2.15277347222222e+7)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(0.772201228365976)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(4942.08738450651)
    end
  end

  describe "in²" do
    subject { described_class.new(2, "in²") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(0.00129032)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(0.0000129032)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(1.29032e+25)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(1.29032e-7)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(3.18845015814713e-7)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(1.29032e-9)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(0.0138888888888889)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(0.00154320987654321)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(4.98195337210489e-10)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(3.18845015814713e-6)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(3.18845015814713e-8)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(5.1015202530354e-5)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(0.166666666666667)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(1.27538006325885e-6)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(0.0318845015814713)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(3.18843709698822e-7)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(0.0138888333333889)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(4.98193344492593e-10)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(3.18843709698822e-6)
    end
  end

  describe "ft²" do
    subject { described_class.new(2, "ft²") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(0.18580608)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(0.0018580608)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(1.8580608e+27)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(1.8580608e-5)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(4.59136822773186e-5)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(1.8580608e-7)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(288)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(0.222222222222222)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(7.17401285583104e-8)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(0.000459136822773186)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(4.59136822773186e-6)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(0.00734618916437098)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(24)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(0.000183654729109275)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(4.59136822773186)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(4.59134941966303e-5)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(1.999992000008)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(7.17398416069334e-8)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(0.000459134941966303)
    end
  end

  describe "yd²" do
    subject { described_class.new(2, "yd²") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(1.67225472)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(0.0167225472)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(1.67225472e+28)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(0.000167225472)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(0.000413223140495868)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(1.67225472e-6)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(2592)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(18)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(6.45661157024793e-7)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(0.00413223140495868)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(0.0000413223140495868)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(0.0661157024793388)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(216)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(0.00165289256198347)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(41.3223140495868)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(0.000413221447769673)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(17.999928000072)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(6.45658574462401e-7)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(0.00413221447769673)
    end
  end

  describe "mi²" do
    subject { described_class.new(2, "mi²") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(5.179976220672e+6)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(5.179976220672e+4)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(5.179976220672e+34)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(517.9976220672)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(1280)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(5.179976220672)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(8.0289792e+9)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(5.57568e+7)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(6.1952e+6)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(12800)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(128)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(2.048e+5)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(6.690816e+8)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(5120)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(1.28e+8)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(1279.99475661134)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(5.5756576973023e+7)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(1.99999200025473)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(12799.9475661134)
    end
  end

  describe "ch²" do
    subject { described_class.new(2, "ch²") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(809.37128448)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(8.0937128448)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(8.0937128448e+30)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(0.080937128448)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(0.2)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(0.00080937128448)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(1.254528e+6)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(8712)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(968)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(0.0003125)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(0.02)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(32)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(104544)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(0.8)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(20000)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(0.199999180720522)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(8711.96515203485)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(0.000312498750039802)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(1.99999180720522)
    end
  end

  describe "fur²" do
    subject { described_class.new(2, "fur²") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(80937.128448)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(809.37128448)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(8.0937128448e+32)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(8.0937128448)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(20)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(0.080937128448)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(1.254528e+8)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(8.712e+5)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(96800)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(0.03125)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(200)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(3200)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(1.04544e+7)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(80)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(2e+6)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(19.9999180720522)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(8.71196515203485e+5)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(0.0312498750039802)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(199.999180720522)
    end
  end

  describe "rd²" do
    subject { described_class.new(2, "rd²") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(50.58570528)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(0.5058570528)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(5.058570528e+29)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(0.005058570528)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(0.0125)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(5.058570528e-5)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(78408)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(544.5)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(60.5)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(0.00001953125)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(0.125)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(0.00125)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(6534)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(0.05)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(1250)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(0.0124999487950326)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(544.497822002178)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(1.95311718774876e-5)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(0.124999487950326)
    end
  end

  describe "bd" do
    subject { described_class.new(2, "bd") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(0.01548384)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(0.0001548384)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(1.548384e+26)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(1.548384e-6)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(3.82614018977655e-6)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(1.548384e-8)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(24)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(0.166666666666667)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(0.0185185185185185)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(5.97834404652587e-9)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(3.82614018977655e-5)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(3.82614018977655e-7)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(0.000612182430364249)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(1.53045607591062e-5)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(0.382614018977655)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(3.82612451638586e-6)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(0.166666000000667)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(5.97832013391112e-9)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(3.82612451638586e-5)
    end
  end

  describe "ro" do
    subject { described_class.new(2, "ro") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(2023.4282112)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(20.234282112)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(2.0234282112e+31)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(0.20234282112)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(0.5)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(0.0020234282112)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(3.136320e+6)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(21780)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(2420)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(0.00078125)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(5)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(0.05)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(80)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(261360)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(50000)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(0.499997951801304)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(21779.9128800871)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(0.000781246875099505)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(4.99997951801304)
    end
  end

  describe "lnk²" do
    subject { described_class.new(2, "lnk²") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(0.080937128448)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(0.00080937128448)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(8.0937128448e+26)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(8.0937128448e-6)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(2e-5)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(8.0937128448e-8)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(125.4528)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(0.8712)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(0.0968)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(3.125e-8)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(0.0002)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(2e-6)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(0.0032)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(10.4544)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(8e-5)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(1.99999180720522e-5)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(0.871196515203485)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(3.12498750039802e-8)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(0.000199999180720522)
    end
  end

  describe "ac (US)" do
    subject { described_class.new(2, "ac (US)") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(8093.746)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(80.93746)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(8.093746e+31)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(0.8093746)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(2.00000819282834)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(0.008093746)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(1.25453313906628e+7)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(87120.3568796027)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(9680.03965328918)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(0.00312501280129429)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(20.0000819282834)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(0.200000819282834)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(320.001310852535)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(1.04544428255523e+6)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(8.00003277131337)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(200000.819282834)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(87120.0083985236)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(0.0031250003016411)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(20)
    end
  end

  describe "ft² (US)" do
    subject { described_class.new(2, "ft² (US)") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(0.18580682322655)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(0.0018580682322655)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(1.8580682322655e+27)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(1.8580682322655e-5)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(4.59138659325987e-5)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(1.8580682322655e-7)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(288.001152003456)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(2.000008000024)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(0.222223111113778)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(7.17404155196855e-8)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(0.000459138659325987)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(4.59138659325987e-6)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(0.00734621854921579)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(24.000096000288)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(0.000183655463730395)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(4.59138659325987)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(4.59136778511581e-5)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(7.17401285671607e-8)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(0.000459136778511581)
    end
  end

  describe "mi² (US)" do
    subject { described_class.new(2, "mi² (US)") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(5.17999694e+6)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(51799.9694)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(5.17999694e+34)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(517.999694)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(1280.00511985745)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(5.17999694)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(8.02901131502263e+9)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(5.57570230209905e+7)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(6.19522478011006e+6)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(2.00000799977726)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(12800.0511985745)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(128.000511985745)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(2.04800819177192e+5)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(6.69084276251886e+8)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(5120.0204794298)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(1.28000511985745e+8)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(1279.99987644782)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(5.57567999931214e+7)
    end

    it "converts to ch² (US)" do
      expect(subject.convert_to("ch² (US)").quantity).to eq(12799.9987644782)
    end
  end

  describe "ch² (US)" do
    subject { described_class.new(2, "ch² (US)") }

    it "converts to m²" do
      expect(subject.convert_to("m²").quantity).to eq(809.3746)
    end

    it "converts to a" do
      expect(subject.convert_to("a").quantity).to eq(8.093746)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(8.093746e+30)
    end

    it "converts to ha" do
      expect(subject.convert_to("ha").quantity).to eq(0.08093746)
    end

    it "converts to ac" do
      expect(subject.convert_to("ac").quantity).to eq(0.200000819282834)
    end

    it "converts to km²" do
      expect(subject.convert_to("km²").quantity).to eq(0.0008093746)
    end

    it "converts to in²" do
      expect(subject.convert_to("in²").quantity).to eq(1.25453313906628e+6)
    end

    it "converts to ft²" do
      expect(subject.convert_to("ft²").quantity).to eq(8712.03568796027)
    end

    it "converts to yd²" do
      expect(subject.convert_to("yd²").quantity).to eq(968.003965328918)
    end

    it "converts to mi²" do
      expect(subject.convert_to("mi²").quantity).to eq(0.000312501280129429)
    end

    it "converts to ch²" do
      expect(subject.convert_to("ch²").quantity).to eq(2.00000819282834)
    end

    it "converts to fur²" do
      expect(subject.convert_to("fur²").quantity).to eq(0.0200000819282834)
    end

    it "converts to rd²" do
      expect(subject.convert_to("rd²").quantity).to eq(32.0001310852535)
    end

    it "converts to bd" do
      expect(subject.convert_to("bd").quantity).to eq(1.04544428255523e+5)
    end

    it "converts to ro" do
      expect(subject.convert_to("ro").quantity).to eq(0.800003277131337)
    end

    it "converts to lnk²" do
      expect(subject.convert_to("lnk²").quantity).to eq(20000.0819282834)
    end

    it "converts to ac (US)" do
      expect(subject.convert_to("ac (US)").quantity).to eq(0.2)
    end

    it "converts to ft² (US)" do
      expect(subject.convert_to("ft² (US)").quantity).to eq(8712.00083985236)
    end

    it "converts to mi² (US)" do
      expect(subject.convert_to("mi² (US)").quantity).to eq(0.00031250003016411)
    end
  end
end
