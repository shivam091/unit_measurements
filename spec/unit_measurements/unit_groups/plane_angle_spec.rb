# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/plane_angle_spec.rb

RSpec.describe UnitMeasurements::PlaneAngle do
  describe "rad" do
    subject { described_class.new(2, :rad) }

    it "converts to deg" do
      expect(subject.convert_to(:deg).quantity).to eq(114.591559026165)
    end

    it "converts to gon" do
      expect(subject.convert_to(:gon).quantity).to eq(127.323954473516)
    end

    it "converts to cir" do
      expect(subject.convert_to(:cir).quantity).to eq(0.318309886183791)
    end

    it "converts to mil" do
      expect(subject.convert_to(:mil).quantity).to eq(2037.18327157626)
    end

    it "converts to rev" do
      expect(subject.convert_to(:rev).quantity).to eq(0.318309886183791)
    end

    it "converts to brad" do
      expect(subject.convert_to(:brad).quantity).to eq(81.4873308630504)
    end

    it "converts to arcmin" do
      expect(subject.convert_to(:arcmin).quantity).to eq(6875.49354156988)
    end

    it "converts to arcsec" do
      expect(subject.convert_to(:arcsec).quantity).to eq(4.12529612494193e+5)
    end
  end

  describe "deg" do
    subject { described_class.new(2, :deg) }

    it "converts to rad" do
      expect(subject.convert_to(:rad).quantity).to eq(0.0349065850398866)
    end

    it "converts to gon" do
      expect(subject.convert_to(:gon).quantity).to eq(2.22222222222222)
    end

    it "converts to cir" do
      expect(subject.convert_to(:cir).quantity).to eq(0.00555555555555556)
    end

    it "converts to mil" do
      expect(subject.convert_to(:mil).quantity).to eq(35.5555555555556)
    end

    it "converts to rev" do
      expect(subject.convert_to(:rev).quantity).to eq(0.00555555555555556)
    end

    it "converts to brad" do
      expect(subject.convert_to(:brad).quantity).to eq(1.42222222222222)
    end

    it "converts to arcmin" do
      expect(subject.convert_to(:arcmin).quantity).to eq(120)
    end

    it "converts to arcsec" do
      expect(subject.convert_to(:arcsec).quantity).to eq(7200)
    end
  end

  describe "gon" do
    subject { described_class.new(2, :gon) }

    it "converts to rad" do
      expect(subject.convert_to(:rad).quantity).to eq(0.0314159265358979)
    end

    it "converts to deg" do
      expect(subject.convert_to(:deg).quantity).to eq(1.8)
    end

    it "converts to cir" do
      expect(subject.convert_to(:cir).quantity).to eq(0.005)
    end

    it "converts to mil" do
      expect(subject.convert_to(:mil).quantity).to eq(32)
    end

    it "converts to rev" do
      expect(subject.convert_to(:rev).quantity).to eq(0.005)
    end

    it "converts to brad" do
      expect(subject.convert_to(:brad).quantity).to eq(1.28)
    end

    it "converts to arcmin" do
      expect(subject.convert_to(:arcmin).quantity).to eq(108)
    end

    it "converts to arcsec" do
      expect(subject.convert_to(:arcsec).quantity).to eq(6480)
    end
  end

  describe "cir" do
    subject { described_class.new(2, :cir) }

    it "converts to rad" do
      expect(subject.convert_to(:rad).quantity).to eq(12.5663706143592)
    end

    it "converts to deg" do
      expect(subject.convert_to(:deg).quantity).to eq(720)
    end

    it "converts to gon" do
      expect(subject.convert_to(:gon).quantity).to eq(800)
    end

    it "converts to mil" do
      expect(subject.convert_to(:mil).quantity).to eq(12800)
    end

    it "converts to rev" do
      expect(subject.convert_to(:rev).quantity).to eq(2)
    end

    it "converts to brad" do
      expect(subject.convert_to(:brad).quantity).to eq(512)
    end

    it "converts to arcmin" do
      expect(subject.convert_to(:arcmin).quantity).to eq(43200)
    end

    it "converts to arcsec" do
      expect(subject.convert_to(:arcsec).quantity).to eq(2.592e+6)
    end
  end

  describe "mil" do
    subject { described_class.new(2, :mil) }

    it "converts to rad" do
      expect(subject.convert_to(:rad).quantity).to eq(0.00196349540849362)
    end

    it "converts to deg" do
      expect(subject.convert_to(:deg).quantity).to eq(0.1125)
    end

    it "converts to gon" do
      expect(subject.convert_to(:gon).quantity).to eq(0.125)
    end

    it "converts to cir" do
      expect(subject.convert_to(:cir).quantity).to eq(0.0003125)
    end

    it "converts to rev" do
      expect(subject.convert_to(:rev).quantity).to eq(0.0003125)
    end

    it "converts to brad" do
      expect(subject.convert_to(:brad).quantity).to eq(0.08)
    end

    it "converts to arcmin" do
      expect(subject.convert_to(:arcmin).quantity).to eq(6.75)
    end

    it "converts to arcsec" do
      expect(subject.convert_to(:arcsec).quantity).to eq(405)
    end
  end

  describe "rev" do
    subject { described_class.new(2, :rev) }

    it "converts to rad" do
      expect(subject.convert_to(:rad).quantity).to eq(12.5663706143592)
    end

    it "converts to deg" do
      expect(subject.convert_to(:deg).quantity).to eq(720)
    end

    it "converts to gon" do
      expect(subject.convert_to(:gon).quantity).to eq(800)
    end

    it "converts to cir" do
      expect(subject.convert_to(:cir).quantity).to eq(2)
    end

    it "converts to mil" do
      expect(subject.convert_to(:mil).quantity).to eq(12800)
    end

    it "converts to brad" do
      expect(subject.convert_to(:brad).quantity).to eq(512)
    end

    it "converts to arcmin" do
      expect(subject.convert_to(:arcmin).quantity).to eq(43200)
    end

    it "converts to arcsec" do
      expect(subject.convert_to(:arcsec).quantity).to eq(2.592e+6)
    end
  end

  describe "brad" do
    subject { described_class.new(2, :brad) }

    it "converts to rad" do
      expect(subject.convert_to(:rad).quantity).to eq(0.0490873852123405)
    end

    it "converts to deg" do
      expect(subject.convert_to(:deg).quantity).to eq(2.8125)
    end

    it "converts to gon" do
      expect(subject.convert_to(:gon).quantity).to eq(3.125)
    end

    it "converts to cir" do
      expect(subject.convert_to(:cir).quantity).to eq(0.0078125)
    end

    it "converts to mil" do
      expect(subject.convert_to(:mil).quantity).to eq(50)
    end

    it "converts to rev" do
      expect(subject.convert_to(:rev).quantity).to eq(0.0078125)
    end

    it "converts to arcmin" do
      expect(subject.convert_to(:arcmin).quantity).to eq(168.75)
    end

    it "converts to arcsec" do
      expect(subject.convert_to(:arcsec).quantity).to eq(10125)
    end
  end

  describe "arcmin" do
    subject { described_class.new(2, :arcmin) }

    it "converts to rad" do
      expect(subject.convert_to(:rad).quantity).to eq(0.000581776417331443)
    end

    it "converts to deg" do
      expect(subject.convert_to(:deg).quantity).to eq(0.0333333333333333)
    end

    it "converts to gon" do
      expect(subject.convert_to(:gon).quantity).to eq(0.037037037037037)
    end

    it "converts to cir" do
      expect(subject.convert_to(:cir).quantity).to eq(9.25925925925926e-5)
    end

    it "converts to mil" do
      expect(subject.convert_to(:mil).quantity).to eq(0.592592592592593)
    end

    it "converts to rev" do
      expect(subject.convert_to(:rev).quantity).to eq(9.25925925925926e-5)
    end

    it "converts to brad" do
      expect(subject.convert_to(:brad).quantity).to eq(0.0237037037037037)
    end

    it "converts to arcsec" do
      expect(subject.convert_to(:arcsec).quantity).to eq(120)
    end
  end

  describe "arcsec" do
    subject { described_class.new(2, :arcsec) }

    it "converts to rad" do
      expect(subject.convert_to(:rad).quantity).to eq(9.69627362219072e-6)
    end

    it "converts to deg" do
      expect(subject.convert_to(:deg).quantity).to eq(0.000555555555555556)
    end

    it "converts to gon" do
      expect(subject.convert_to(:gon).quantity).to eq(0.000617283950617284)
    end

    it "converts to cir" do
      expect(subject.convert_to(:cir).quantity).to eq(1.54320987654321e-6)
    end

    it "converts to mil" do
      expect(subject.convert_to(:mil).quantity).to eq(0.00987654320987654)
    end

    it "converts to rev" do
      expect(subject.convert_to(:rev).quantity).to eq(1.54320987654321e-6)
    end

    it "converts to brad" do
      expect(subject.convert_to(:brad).quantity).to eq(0.000395061728395062)
    end

    it "converts to arcmin" do
      expect(subject.convert_to(:arcmin).quantity).to eq(0.0333333333333333)
    end
  end
end
