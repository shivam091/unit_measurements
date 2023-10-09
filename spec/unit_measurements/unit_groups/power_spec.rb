# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/power_spec.rb

RSpec.describe UnitMeasurements::Power do
  describe "W" do
    subject { described_class.new(2, "W") }

    it "converts to hp (M)" do
      expect(subject.convert_to("hp (M)").quantity).to eq(0.00271924323460781)
    end

    it "converts to hp" do
      expect(subject.convert_to("hp").quantity).to eq(0.00268204417919006)
    end

    it "converts to erg/s" do
      expect(subject.convert_to("erg/s").quantity).to eq(2e+7)
    end

    it "converts to cal/s" do
      expect(subject.convert_to("cal/s").quantity).to eq(0.477691793254992)
    end
  end

  describe "hp (M)" do
    subject { described_class.new(2, "hp (M)") }

    it "converts to W" do
      expect(subject.convert_to("W").quantity).to eq(1470.9975)
    end

    it "converts to hp" do
      expect(subject.convert_to("hp").quantity).to eq(1.97264014123906)
    end

    it "converts to erg/s" do
      expect(subject.convert_to("erg/s").quantity).to eq(1.4709975e+10)
    end

    it "converts to cal/s" do
      expect(subject.convert_to("cal/s").quantity).to eq(351.341716824305)
    end
  end

  describe "hp" do
    subject { described_class.new(2, "hp") }

    it "converts to W" do
      expect(subject.convert_to("W").quantity).to eq(1491.39974316454)
    end

    it "converts to hp (M)" do
      expect(subject.convert_to("hp (M)").quantity).to eq(2.027739330848)
    end

    it "converts to erg/s" do
      expect(subject.convert_to("erg/s").quantity).to eq(1.49139974316454e+10)
    end

    it "converts to cal/s" do
      expect(subject.convert_to("cal/s").quantity).to eq(356.214708886152)
    end
  end

  describe "erg/s" do
    subject { described_class.new(2, "erg/s") }

    it "converts to W" do
      expect(subject.convert_to("W").quantity).to eq(2e-7)
    end

    it "converts to hp (M)" do
      expect(subject.convert_to("hp (M)").quantity).to eq(2.71924323460781e-10)
    end

    it "converts to hp" do
      expect(subject.convert_to("hp").quantity).to eq(2.68204417919006e-10)
    end

    it "converts to cal/s" do
      expect(subject.convert_to("cal/s").quantity).to eq(4.77691793254992e-8)
    end
  end

  describe "cal/s" do
    subject { described_class.new(2, "cal/s") }

    it "converts to W" do
      expect(subject.convert_to("W").quantity).to eq(8.3736)
    end

    it "converts to hp (M)" do
      expect(subject.convert_to("hp (M)").quantity).to eq(0.011384927574656)
    end

    it "converts to hp" do
      expect(subject.convert_to("hp").quantity).to eq(0.0112291825694329)
    end

    it "converts to erg/s" do
      expect(subject.convert_to("erg/s").quantity).to eq(8.3736e+7)
    end
  end
end
