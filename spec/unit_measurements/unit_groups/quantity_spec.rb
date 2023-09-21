# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/quantity_spec.rb

RSpec.describe UnitMeasurements::Quantity do
  describe "pc" do
    subject { described_class.new(12, :pc) }

    it "converts to pr" do
      expect(subject.convert_to(:pr).quantity).to eq(6)
    end

    it "converts to dz" do
      expect(subject.convert_to(:dz).quantity).to eq(1)
    end

    it "converts to gr" do
      expect(subject.convert_to(:gr).quantity).to eq(0.0833333333333333)
    end

    it "converts to gg" do
      expect(subject.convert_to(:gg).quantity).to eq(0.00694444444444444)
    end
  end

  describe "pr" do
    subject { described_class.new(12, :pr) }

    it "converts to pc" do
      expect(subject.convert_to(:pc).quantity).to eq(24)
    end

    it "converts to dz" do
      expect(subject.convert_to(:dz).quantity).to eq(2)
    end

    it "converts to gr" do
      expect(subject.convert_to(:gr).quantity).to eq(0.166666666666667)
    end

    it "converts to gg" do
      expect(subject.convert_to(:gg).quantity).to eq(0.0138888888888889)
    end
  end

  describe "dz" do
    subject { described_class.new(12, :dz) }

    it "converts to pc" do
      expect(subject.convert_to(:pc).quantity).to eq(144)
    end

    it "converts to pr" do
      expect(subject.convert_to(:pr).quantity).to eq(72)
    end

    it "converts to gr" do
      expect(subject.convert_to(:gr).quantity).to eq(1)
    end

    it "converts to gg" do
      expect(subject.convert_to(:gg).quantity).to eq(0.0833333333333333)
    end
  end

  describe "gr" do
    subject { described_class.new(12, :gr) }

    it "converts to pc" do
      expect(subject.convert_to(:pc).quantity).to eq(1728)
    end

    it "converts to pr" do
      expect(subject.convert_to(:pr).quantity).to eq(864)
    end

    it "converts to dz" do
      expect(subject.convert_to(:dz).quantity).to eq(144)
    end

    it "converts to gg" do
      expect(subject.convert_to(:gg).quantity).to eq(1)
    end
  end

  describe "gg" do
    subject { described_class.new(12, :gg) }

    it "converts to pc" do
      expect(subject.convert_to(:pc).quantity).to eq(20736)
    end

    it "converts to pr" do
      expect(subject.convert_to(:pr).quantity).to eq(10368)
    end

    it "converts to dz" do
      expect(subject.convert_to(:dz).quantity).to eq(1728)
    end

    it "converts to gr" do
      expect(subject.convert_to(:gr).quantity).to eq(144)
    end
  end
end
