# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/solid_angle_spec.rb

RSpec.describe UnitMeasurements::SolidAngle do
  describe "sr" do
    subject { described_class.new(2, "sr") }

    it "converts to sp" do
      expect(subject.convert_to("sp").quantity).to eq(0.159154943091895)
    end

    it "converts to deg²" do
      expect(subject.convert_to("deg²").quantity).to eq(6565.61270002349)
    end

    it "converts to arcmin²" do
      expect(subject.convert_to("arcmin²").quantity).to eq(2.36362057200846e+7)
    end

    it "converts to arcsec²" do
      expect(subject.convert_to("arcsec²").quantity).to eq(8.50903405923044e+10)
    end
  end

  describe "sp" do
    subject { described_class.new(2, "sp") }

    it "converts to sr" do
      expect(subject.convert_to("sr").quantity).to eq(25.1327412287183)
    end

    it "converts to deg²" do
      expect(subject.convert_to("deg²").quantity).to eq(82505.9224988386)
    end

    it "converts to arcmin²" do
      expect(subject.convert_to("arcmin²").quantity).to eq(2.97021320995819e+8)
    end

    it "converts to arcsec²" do
      expect(subject.convert_to("arcsec²").quantity).to eq(1.06927675558495e+12)
    end
  end

  describe "deg²" do
    subject { described_class.new(2, "deg²") }

    it "converts to sr" do
      expect(subject.convert_to("sr").quantity).to eq(0.000609234839573417)
    end

    it "converts to sp" do
      expect(subject.convert_to("sp").quantity).to eq(0.0000484813681109536)
    end

    it "converts to arcmin²" do
      expect(subject.convert_to("arcmin²").quantity).to eq(7200)
    end

    it "converts to arcsec²" do
      expect(subject.convert_to("arcsec²").quantity).to eq(2.592e+7)
    end
  end

  describe "arcmin²" do
    subject { described_class.new(2, "arcmin²") }

    it "converts to sr" do
      expect(subject.convert_to("sr").quantity).to eq(1.69231899881505e-7)
    end

    it "converts to sp" do
      expect(subject.convert_to("sp").quantity).to eq(1.34670466974871e-8)
    end

    it "converts to deg²" do
      expect(subject.convert_to("deg²").quantity).to eq(0.000555555555555556)
    end

    it "converts to arcsec²" do
      expect(subject.convert_to("arcsec²").quantity).to eq(7200)
    end
  end

  describe "arcsec²" do
    subject { described_class.new(2, "arcsec²") }

    it "converts to sr" do
      expect(subject.convert_to("sr").quantity).to eq(4.70088610781958e-11)
    end

    it "converts to sp" do
      expect(subject.convert_to("sp").quantity).to eq(3.74084630485753e-12)
    end

    it "converts to deg²" do
      expect(subject.convert_to("deg²").quantity).to eq(1.54320987654321e-7)
    end

    it "converts to arcmin²" do
      expect(subject.convert_to("arcmin²").quantity).to eq(0.000555555555555556)
    end
  end
end
