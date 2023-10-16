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

    it "converts to rod²" do
      expect(subject.convert_to("rod²").quantity).to eq(0.0790737220694929)
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

    it "converts to rod²" do
      expect(subject.convert_to("rod²").quantity).to eq(7.90737220694929)
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

    it "converts to rod²" do
      expect(subject.convert_to("rod²").quantity).to eq(7.90737220694929e-30)
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

    it "converts to rod²" do
      expect(subject.convert_to("rod²").quantity).to eq(790.737220694929)
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

    it "converts to rod²" do
      expect(subject.convert_to("rod²").quantity).to eq(320)
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

    it "converts to rod²" do
      expect(subject.convert_to("rod²").quantity).to eq(79073.7220694929)
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

    it "converts to rod²" do
      expect(subject.convert_to("rod²").quantity).to eq(5.1015202530354e-5)
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

    it "converts to rod²" do
      expect(subject.convert_to("rod²").quantity).to eq(0.00734618916437098)
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

    it "converts to rod²" do
      expect(subject.convert_to("rod²").quantity).to eq(0.0661157024793388)
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

    it "converts to rod²" do
      expect(subject.convert_to("rod²").quantity).to eq(2.048e+5)
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

    it "converts to rod²" do
      expect(subject.convert_to("rod²").quantity).to eq(32)
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

    it "converts to rod²" do
      expect(subject.convert_to("rod²").quantity).to eq(3200)
    end
  end

  describe "rod²" do
    subject { described_class.new(2, "rod²") }

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
  end
end
