# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/velocity_spec.rb

RSpec.describe UnitMeasurements::Velocity do
  describe "Kn" do
    subject { described_class.new(2, "Kn") }

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(1.029546)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(61.77276)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(3706.3656)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(40.5333070866142)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(2431.99842519685)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(1.45919905511811e+5)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(3.37777559055118)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(202.666535433071)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(12159.9921259843)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(0.000639730225483178)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(0.0383838135289907)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(2.30302881173944)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(6190.8959711365)
    end
  end

  describe "m/s" do
    subject { described_class.new(2, "m/s") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(3.88520765463612)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(120)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(7200)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(78.740157480315)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(4724.4094488189)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(2.83464566929134e+5)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(6.56167979002625)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(393.700787401575)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(23622.0472440945)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(0.00124274238447467)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(0.0745645430684801)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(4.4738725841088)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(12026.4582080577)
    end
  end

  describe "m/min" do
    subject { described_class.new(2, "m/min") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.064753460910602)
    end

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.0333333333333333)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(120)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(1.31233595800525)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(78.740157480315)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(4724.4094488189)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.109361329833771)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(6.56167979002625)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(393.700787401575)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(2.07123730745778e-5)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(0.00124274238447467)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(0.0745645430684801)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(200.440970134295)
    end
  end

  describe "m/h" do
    subject { described_class.new(2, "m/h") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.00107922434851003)
    end

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.000555555555555556)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(0.0333333333333333)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(0.0218722659667542)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(1.31233595800525)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(78.740157480315)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.00182268883056285)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(0.109361329833771)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(6.56167979002625)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(3.4520621790963e-7)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(2.07123730745778e-5)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(0.00124274238447467)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(3.34068283557159)
    end
  end

  describe "in/s" do
    subject { described_class.new(2, "in/s") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.0986842744277575)
    end

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.0508)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(3.048)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(182.88)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(120)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(7200)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.166666666666667)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(10)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(600)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(3.15656565656566e-5)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(0.00189393939393939)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(0.113636363636364)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(305.472038484666)
    end
  end

  describe "in/min" do
    subject { described_class.new(2, "in/min") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.00164473790712929)
    end

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.000846666666666667)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(0.0508)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(3.048)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(0.0333333333333333)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(120)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.00277777777777778)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(0.166666666666667)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(10)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(5.26094276094276e-7)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(3.15656565656566e-5)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(0.00189393939393939)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(5.0912006414111)
    end
  end

  describe "in/h" do
    subject { described_class.new(2, "in/h") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.0000274122984521549)
    end

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.0000141111111111111)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(0.000846666666666667)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(0.0508)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(0.000555555555555556)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(0.0333333333333333)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.0000462962962962963)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(0.00277777777777778)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(0.166666666666667)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(8.7682379349046e-9)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(5.26094276094276e-7)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(3.15656565656566e-5)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(0.0848533440235184)
    end
  end

  describe "ft/s" do
    subject { described_class.new(2, "ft/s") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(1.18421129313309)
    end

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.6096)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(36.576)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(2194.56)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(24)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(1440)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(86400)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(120)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(7200)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(0.000378787878787879)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(0.0227272727272727)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(1.36363636363636)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(3665.66446181599)
    end
  end

  describe "ft/min" do
    subject { described_class.new(2, "ft/min") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.0197368548855515)
    end

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.01016)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(0.6096)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(36.576)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(0.4)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(24)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(1440)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.0333333333333333)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(120)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(6.31313131313131e-6)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(0.000378787878787879)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(0.0227272727272727)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(61.0944076969332)
    end
  end

  describe "ft/h" do
    subject { described_class.new(2, "ft/h") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.000328947581425858)
    end

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.000169333333333333)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(0.01016)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(0.6096)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(0.00666666666666667)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(0.4)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(24)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.000555555555555556)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(0.0333333333333333)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(1.05218855218855e-7)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(6.31313131313131e-6)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(0.000378787878787879)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(1.01824012828222)
    end
  end

  describe "mi/s" do
    subject { described_class.new(2, "mi/s") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(6252.63562774271)
    end

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(3218.688)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(1.9312128e+5)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(1.15872768e+7)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(126720)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(7.6032e+6)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(4.56192e+8)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(10560)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(6.336e+5)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(3.8016e+7)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(120)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(7200)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(1.93547083583885e+7)
    end
  end

  describe "mi/min" do
    subject { described_class.new(2, "mi/min") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(104.210593795712)
    end

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(53.6448)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(3218.688)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(1.9312128e+5)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(2112)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(1.2672e+5)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(7.6032e+6)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(176)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(10560)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(6.336e+5)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(0.0333333333333333)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(120)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(322578.472639808)
    end
  end

  describe "mi/h" do
    subject { described_class.new(2, "mi/h") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(1.73684322992853)
    end

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.89408)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(53.6448)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(3218.688)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(35.2)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(2112)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(1.2672e+5)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(2.93333333333333)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(176)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(10560)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(0.000555555555555556)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(0.0333333333333333)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(5376.30787733013)
    end
  end

  describe "fur/ftn" do
    subject { described_class.new(2, "fur/ftn") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.000646110032965987)
    end

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.0003326)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(0.019956)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(1.19736)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(0.0130944881889764)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(0.785669291338583)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(47.140157480315)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.00109120734908137)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(0.0654724409448819)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(3.92834645669291)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(2.06668058538137e-7)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(1.24000835122882e-5)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(0.000744005010737294)
    end
  end
end
