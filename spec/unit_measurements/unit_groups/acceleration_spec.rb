# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/acceleration_spec.rb

RSpec.describe UnitMeasurements::Acceleration do
  describe "Gal" do
    subject { described_class.new(2, "Gal") }

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(0.02)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(0.78740157480315)
    end

    it "converts to ipm/s" do
      expect(subject.convert_to("ipm/s").quantity).to eq(47.2440982081967)
    end

    it "converts to iph/s" do
      expect(subject.convert_to("iph/s").quantity).to eq(2834.6458924918)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(0.0656167979002625)
    end

    it "converts to fpm/s" do
      expect(subject.convert_to("fpm/s").quantity).to eq(3.93700787401575)
    end

    it "converts to fph/s" do
      expect(subject.convert_to("fph/s").quantity).to eq(236.220463140927)
    end

    it "converts to mi/s²" do
      expect(subject.convert_to("mi/s²").quantity).to eq(1.24274238447467e-5)
    end

    it "converts to mpm/s" do
      expect(subject.convert_to("mpm/s").quantity).to eq(0.000745645430684801)
    end

    it "converts to mph/s" do
      expect(subject.convert_to("mph/s").quantity).to eq(0.044738725841088)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(0.038876893207507)
    end
  end

  describe "m/s²" do
    subject { described_class.new(2, "m/s²") }

    it "converts to Gal" do
      expect(subject.convert_to("Gal").quantity).to eq(200)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(78.740157480315)
    end

    it "converts to ipm/s" do
      expect(subject.convert_to("ipm/s").quantity).to eq(4724.40982081967)
    end

    it "converts to iph/s" do
      expect(subject.convert_to("iph/s").quantity).to eq(2.8346458924918e+5)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(6.56167979002625)
    end

    it "converts to fpm/s" do
      expect(subject.convert_to("fpm/s").quantity).to eq(393.700787401575)
    end

    it "converts to fph/s" do
      expect(subject.convert_to("fph/s").quantity).to eq(23622.0463140927)
    end

    it "converts to mi/s²" do
      expect(subject.convert_to("mi/s²").quantity).to eq(0.00124274238447467)
    end

    it "converts to mpm/s" do
      expect(subject.convert_to("mpm/s").quantity).to eq(0.0745645430684801)
    end

    it "converts to mph/s" do
      expect(subject.convert_to("mph/s").quantity).to eq(4.4738725841088)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(3.8876893207507)
    end
  end

  describe "in/s²" do
    subject { described_class.new(2, "in/s²") }

    it "converts to Gal" do
      expect(subject.convert_to("Gal").quantity).to eq(5.08)
    end

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(0.0508)
    end

    it "converts to ipm/s" do
      expect(subject.convert_to("ipm/s").quantity).to eq(120.00000944882)
    end

    it "converts to iph/s" do
      expect(subject.convert_to("iph/s").quantity).to eq(7200.00056692918)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(0.166666666666667)
    end

    it "converts to fpm/s" do
      expect(subject.convert_to("fpm/s").quantity).to eq(10)
    end

    it "converts to fph/s" do
      expect(subject.convert_to("fph/s").quantity).to eq(599.999976377954)
    end

    it "converts to mi/s²" do
      expect(subject.convert_to("mi/s²").quantity).to eq(3.15656565656566e-5)
    end

    it "converts to mpm/s" do
      expect(subject.convert_to("mpm/s").quantity).to eq(0.00189393939393939)
    end

    it "converts to mph/s" do
      expect(subject.convert_to("mph/s").quantity).to eq(0.113636363636364)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(0.0987473087470677)
    end
  end

  describe "ipm/s" do
    subject { described_class.new(2, "ipm/s") }

    it "converts to Gal" do
      expect(subject.convert_to("Gal").quantity).to eq(0.08466666)
    end

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(0.0008466666)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(0.0333333307086614)
    end

    it "converts to iph/s" do
      expect(subject.convert_to("iph/s").quantity).to eq(120.0)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(0.00277777755905512)
    end

    it "converts to fpm/s" do
      expect(subject.convert_to("fpm/s").quantity).to eq(0.166666653543307)
    end

    it "converts to fph/s" do
      expect(subject.convert_to("fph/s").quantity).to eq(9.99999881889769)
    end

    it "converts to mi/s²" do
      expect(subject.convert_to("mi/s²").quantity).to eq(5.2609423466953e-7)
    end

    it "converts to mpm/s" do
      expect(subject.convert_to("mpm/s").quantity).to eq(3.15656540801718e-5)
    end

    it "converts to mph/s" do
      expect(subject.convert_to("mph/s").quantity).to eq(0.00189393924481031)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(0.00164578834952815)
    end
  end

  describe "iph/s" do
    subject { described_class.new(2, "iph/s") }

    it "converts to Gal" do
      expect(subject.convert_to("Gal").quantity).to eq(0.001411111)
    end

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(1.411111e-05)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(0.000555555511811024)
    end

    it "converts to ipm/s" do
      expect(subject.convert_to("ipm/s").quantity).to eq(0.0333333333333333)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(4.62962926509186e-5)
    end

    it "converts to fpm/s" do
      expect(subject.convert_to("fpm/s").quantity).to eq(0.00277777755905512)
    end

    it "converts to fph/s" do
      expect(subject.convert_to("fph/s").quantity).to eq(0.166666646981628)
    end

    it "converts to mi/s²" do
      expect(subject.convert_to("mi/s²").quantity).to eq(8.76823724449216e-9)
    end

    it "converts to mpm/s" do
      expect(subject.convert_to("mpm/s").quantity).to eq(5.2609423466953e-7)
    end

    it "converts to mph/s" do
      expect(subject.convert_to("mph/s").quantity).to eq(3.15656540801718e-5)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(2.74298058254692e-5)
    end
  end

  describe "ft/s²" do
    subject { described_class.new(2, "ft/s²") }

    it "converts to Gal" do
      expect(subject.convert_to("Gal").quantity).to eq(60.96)
    end

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(0.6096)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(24)
    end

    it "converts to ipm/s" do
      expect(subject.convert_to("ipm/s").quantity).to eq(1440.00011338584)
    end

    it "converts to iph/s" do
      expect(subject.convert_to("iph/s").quantity).to eq(86400.0068031501)
    end

    it "converts to fpm/s" do
      expect(subject.convert_to("fpm/s").quantity).to eq(120)
    end

    it "converts to fph/s" do
      expect(subject.convert_to("fph/s").quantity).to eq(7199.99971653544)
    end

    it "converts to mi/s²" do
      expect(subject.convert_to("mi/s²").quantity).to eq(0.000378787878787879)
    end

    it "converts to mpm/s" do
      expect(subject.convert_to("mpm/s").quantity).to eq(0.0227272727272727)
    end

    it "converts to mph/s" do
      expect(subject.convert_to("mph/s").quantity).to eq(1.36363636363636)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(1.18496770496481)
    end
  end

  describe "fph/s" do
    subject { described_class.new(2, "fph/s") }

    it "converts to Gal" do
      expect(subject.convert_to("Gal").quantity).to eq(0.016933334)
    end

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(0.00016933334)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(0.00666666692913386)
    end

    it "converts to ipm/s" do
      expect(subject.convert_to("ipm/s").quantity).to eq(0.400000047244098)
    end

    it "converts to iph/s" do
      expect(subject.convert_to("iph/s").quantity).to eq(24.0000028346459)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(0.000555555577427821)
    end

    it "converts to fpm/s" do
      expect(subject.convert_to("fpm/s").quantity).to eq(0.0333333346456693)
    end

    it "converts to mi/s²" do
      expect(subject.convert_to("mi/s²").quantity).to eq(1.0521885936133e-7)
    end

    it "converts to mpm/s" do
      expect(subject.convert_to("mpm/s").quantity).to eq(6.31313156167979e-6)
    end

    it "converts to mph/s" do
      expect(subject.convert_to("mph/s").quantity).to eq(0.000378787893700787)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(0.000329157708782523)
    end
  end

  describe "fpm/s" do
    subject { described_class.new(2, "fpm/s") }

    it "converts to Gal" do
      expect(subject.convert_to("Gal").quantity).to eq(1.016)
    end

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(0.01016)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(0.4)
    end

    it "converts to ipm/s" do
      expect(subject.convert_to("ipm/s").quantity).to eq(24.0000018897639)
    end

    it "converts to iph/s" do
      expect(subject.convert_to("iph/s").quantity).to eq(1440.00011338584)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(0.0333333333333333)
    end

    it "converts to fph/s" do
      expect(subject.convert_to("fph/s").quantity).to eq(119.999995275591)
    end

    it "converts to mi/s²" do
      expect(subject.convert_to("mi/s²").quantity).to eq(6.31313131313131e-6)
    end

    it "converts to mpm/s" do
      expect(subject.convert_to("mpm/s").quantity).to eq(0.000378787878787879)
    end

    it "converts to mph/s" do
      expect(subject.convert_to("mph/s").quantity).to eq(0.0227272727272727)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(0.0197494617494135)
    end
  end

  describe "mi/s²" do
    subject { described_class.new(2, "mi/s²") }

    it "converts to Gal" do
      expect(subject.convert_to("Gal").quantity).to eq(3.218688e+5)
    end

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(3218.688)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(1.2672e+5)
    end

    it "converts to ipm/s" do
      expect(subject.convert_to("ipm/s").quantity).to eq(7.60320059867721e+6)
    end

    it "converts to iph/s" do
      expect(subject.convert_to("iph/s").quantity).to eq(4.56192035920633e+8)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(10560)
    end

    it "converts to fpm/s" do
      expect(subject.convert_to("fpm/s").quantity).to eq(6.336e+5)
    end

    it "converts to fph/s" do
      expect(subject.convert_to("fph/s").quantity).to eq(3.80159985033071e+7)
    end

    it "converts to mpm/s" do
      expect(subject.convert_to("mpm/s").quantity).to eq(120)
    end

    it "converts to mph/s" do
      expect(subject.convert_to("mph/s").quantity).to eq(7200)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(6256.62948221421)
    end
  end

  describe "mph/s" do
    subject { described_class.new(2, "mph/s") }

    it "converts to Gal" do
      expect(subject.convert_to("Gal").quantity).to eq(89.408)
    end

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(0.89408)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(35.2)
    end

    it "converts to ipm/s" do
      expect(subject.convert_to("ipm/s").quantity).to eq(2112.00016629923)
    end

    it "converts to iph/s" do
      expect(subject.convert_to("iph/s").quantity).to eq(1.26720009977954e+5)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(2.93333333333333)
    end

    it "converts to fpm/s" do
      expect(subject.convert_to("fpm/s").quantity).to eq(176)
    end

    it "converts to fph/s" do
      expect(subject.convert_to("fph/s").quantity).to eq(10559.999584252)
    end

    it "converts to mi/s²" do
      expect(subject.convert_to("mi/s²").quantity).to eq(0.000555555555555556)
    end

    it "converts to mpm/s" do
      expect(subject.convert_to("mpm/s").quantity).to eq(0.0333333333333333)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(1.73795263394839)
    end
  end

  describe "mpm/s" do
    subject { described_class.new(2, "mpm/s") }

    it "converts to Gal" do
      expect(subject.convert_to("Gal").quantity).to eq(5364.48)
    end

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(53.6448)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(2112)
    end

    it "converts to ipm/s" do
      expect(subject.convert_to("ipm/s").quantity).to eq(1.26720009977954e+5)
    end

    it "converts to iph/s" do
      expect(subject.convert_to("iph/s").quantity).to eq(7.60320059867721e+6)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(176)
    end

    it "converts to fpm/s" do
      expect(subject.convert_to("fpm/s").quantity).to eq(10560)
    end

    it "converts to fph/s" do
      expect(subject.convert_to("fph/s").quantity).to eq(6.33599975055119e+5)
    end

    it "converts to mi/s²" do
      expect(subject.convert_to("mi/s²").quantity).to eq(0.0333333333333333)
    end

    it "converts to mph/s" do
      expect(subject.convert_to("mph/s").quantity).to eq(120)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(104.277158036903)
    end
  end

  describe "Kn/s" do
    subject { described_class.new(2, "Kn/s") }

    it "converts to Gal" do
      expect(subject.convert_to("Gal").quantity).to eq(102.88888)
    end

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(1.0288888)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(40.5074330708661)
    end

    it "converts to ipm/s" do
      expect(subject.convert_to("ipm/s").quantity).to eq(2430.44617562568)
    end

    it "converts to iph/s" do
      expect(subject.convert_to("iph/s").quantity).to eq(1.45826770537541e+5)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(3.37561942257218)
    end

    it "converts to fpm/s" do
      expect(subject.convert_to("fpm/s").quantity).to eq(202.537165354331)
    end

    it "converts to fph/s" do
      expect(subject.convert_to("fph/s").quantity).to eq(12152.2294428256)
    end

    it "converts to mi/s²" do
      expect(subject.convert_to("mi/s²").quantity).to eq(0.00063932186033564)
    end

    it "converts to mpm/s" do
      expect(subject.convert_to("mpm/s").quantity).to eq(0.0383593116201384)
    end

    it "converts to mph/s" do
      expect(subject.convert_to("mph/s").quantity).to eq(2.3015586972083)
    end
  end
end
