# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/length_spec.rb

RSpec.describe UnitMeasurements::Length do
  describe "m" do
    subject { described_class.new(2, "m") }

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(78.740157480315)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(6.56167979002625)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(2.18722659667542)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.00124274238447467)
    end
  end

  describe "in" do
    subject { described_class.new(2, "in") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(0.0508)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(0.166666666666667)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(0.0555555555555556)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.0000315656565656566)
    end
  end

  describe "ft" do
    subject { described_class.new(2, "ft") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(0.6096)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(24)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(0.666666666666667)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.000378787878787879)
    end
  end

  describe "yd" do
    subject { described_class.new(2, "yd") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(1.8288)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(72)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(6)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.00113636363636364)
    end
  end

  describe "mi" do
    subject { described_class.new(2, "mi") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(3218.688)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(1.2672e+5)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(10560)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(3520)
    end
  end
end
