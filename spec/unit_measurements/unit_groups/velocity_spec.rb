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

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(3.37777559055118)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(1.45919905511811e+5)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(12159.9921259843)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(2431.99842519685)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(202.666535433071)
    end
  end

  describe "m/s" do
    subject { described_class.new(2, "m/s") }

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(120)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(7200)
    end

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(3.88520765463612)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(78.740157480315)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(6.56167979002625)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(283464.566929134)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(23622.0472440945)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(4724.4094488189)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(393.700787401575)
    end
  end

  describe "m/min" do
    subject { described_class.new(2, "m/min") }

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.0333333333333333)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(120)
    end

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.064753460910602)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(1.31233595800525)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.109361329833771)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(4724.4094488189)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(393.700787401575)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(78.740157480315)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(6.56167979002625)
    end
  end

  describe "m/h" do
    subject { described_class.new(2, "m/h") }

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.000555555555555556)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(0.0333333333333333)
    end

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.00107922434851003)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(0.0218722659667542)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.00182268883056285)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(78.740157480315)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(6.56167979002625)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(1.31233595800525)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(0.109361329833771)
    end
  end

  describe "in/s" do
    subject { described_class.new(2, "in/s") }

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.0508)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(3.048)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(182.88)
    end

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.0986842744277575)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.166666666666667)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(7200)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(600)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(120)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(10)
    end
  end

  describe "ft/s" do
    subject { described_class.new(2, "ft/s") }

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.6096)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(36.576)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(2194.56)
    end

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(1.18421129313309)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(24)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(86400)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(7200)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(1440)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(120)
    end
  end

  describe "in/h" do
    subject { described_class.new(2, "in/h") }

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.0000141111111111111)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(0.000846666666666667)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(0.0508)
    end

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.0000274122984521549)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(0.000555555555555556)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.0000462962962962963)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(0.166666666666667)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(0.0333333333333333)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(0.00277777777777778)
    end
  end

  describe "ft/h" do
    subject { described_class.new(2, "ft/h") }

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.000169333333333333)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(0.01016)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(0.6096)
    end

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.000328947581425858)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(0.00666666666666667)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.000555555555555556)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(24)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(0.4)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(0.0333333333333333)
    end
  end

  describe "in/min" do
    subject { described_class.new(2, "in/min") }

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.000846666666666667)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(0.0508)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(3.048)
    end

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.00164473790712929)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(0.0333333333333333)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.00277777777777778)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(120)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(10)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(0.166666666666667)
    end
  end

  describe "ft/min" do
    subject { described_class.new(2, "ft/min") }

    it "converts to m/s" do
      expect(subject.convert_to("m/s").quantity).to eq(0.01016)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(0.6096)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(36.576)
    end

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(0.0197368548855515)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(0.4)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(0.0333333333333333)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(1440)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(120)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(24)
    end
  end
end
