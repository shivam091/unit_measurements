# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electric_charge_spec.rb

RSpec.describe UnitMeasurements::ElectricCharge do
  describe "C" do
    subject { described_class.new(10, :C) }

    it "converts to abC" do
      expect(subject.convert_to(:abC).quantity).to eq(1)
    end

    it "converts to statC" do
      expect(subject.convert_to(:statC).quantity).to eq(2.99792453684314e+10)
    end

    it "converts to Fr" do
      expect(subject.convert_to(:Fr).quantity).to eq(2.99792453684314e+10)
    end

    it "converts to Fd" do
      expect(subject.convert_to(:Fd).quantity).to eq(0.000103642690554632)
    end
  end

  describe "abC" do
    subject { described_class.new(10, :abC) }

    it "converts to C" do
      expect(subject.convert_to("C").quantity).to eq(100)
    end

    it "converts to statC" do
      expect(subject.convert_to(:statC).quantity).to eq(2.99792453684314e+11)
    end

    it "converts to Fr" do
      expect(subject.convert_to(:Fr).quantity).to eq(2.99792453684314e+11)
    end

    it "converts to Fd" do
      expect(subject.convert_to(:Fd).quantity).to eq(0.00103642690554632)
    end
  end

  describe "statC" do
    subject { described_class.new(10, :statC) }

    it "converts to C" do
      expect(subject.convert_to("C").quantity).to eq(3.335641e-9)
    end

    it "converts to abC" do
      expect(subject.convert_to(:abC).quantity).to eq(3.335641e-10)
    end

    it "converts to Fr" do
      expect(subject.convert_to(:Fr).quantity).to eq(10)
    end

    it "converts to Fd" do
      expect(subject.convert_to(:Fd).quantity).to eq(3.45714807964343e-14)
    end
  end

  describe "Fr" do
    subject { described_class.new(10, :Fr) }

    it "converts to C" do
      expect(subject.convert_to("C").quantity).to eq(3.335641e-9)
    end

    it "converts to abC" do
      expect(subject.convert_to(:abC).quantity).to eq(3.335641e-10)
    end

    it "converts to statC" do
      expect(subject.convert_to(:statC).quantity).to eq(10)
    end

    it "converts to Fd" do
      expect(subject.convert_to(:Fd).quantity).to eq(3.45714807964343e-14)
    end
  end

  describe "Fd" do
    subject { described_class.new(10, :Fd) }

    it "converts to C" do
      expect(subject.convert_to("C").quantity).to eq(964853.377164)
    end

    it "converts to abC" do
      expect(subject.convert_to(:abC).quantity).to eq(96485.3377164)
    end

    it "converts to statC" do
      expect(subject.convert_to(:statC).quantity).to eq(2.89255761385593e+15)
    end

    it "converts to Fr" do
      expect(subject.convert_to(:Fr).quantity).to eq(2.89255761385593e+15)
    end
  end
end
