# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/voltage_spec.rb

RSpec.describe UnitMeasurements::Voltage do
  describe "V" do
    subject { described_class.new(2, "V") }

    it "converts to abV" do
      expect(subject.convert_to("abV").quantity).to eq(2e+8)
    end

    it "converts to statV" do
      expect(subject.convert_to("statV").quantity).to eq(0.00667128190396304)
    end

    it "converts to W/A" do
      expect(subject.convert_to("W/A").quantity).to eq(2)
    end

    it "converts to J/C" do
      expect(subject.convert_to("J/C").quantity).to eq(2)
    end
  end

  describe "abV" do
    subject { described_class.new(2, "abV") }

    it "converts to V" do
      expect(subject.convert_to("V").quantity).to eq(2e-8)
    end

    it "converts to statV" do
      expect(subject.convert_to("statV").quantity).to eq(6.67128190396304e-11)
    end

    it "converts to W/A" do
      expect(subject.convert_to("W/A").quantity).to eq(2e-8)
    end

    it "converts to J/C" do
      expect(subject.convert_to("J/C").quantity).to eq(2e-8)
    end
  end

  describe "statV" do
    subject { described_class.new(2, "statV") }

    it "converts to V" do
      expect(subject.convert_to("V").quantity).to eq(599.584916)
    end

    it "converts to abV" do
      expect(subject.convert_to("abV").quantity).to eq(5.99584916e+10)
    end

    it "converts to W/A" do
      expect(subject.convert_to("W/A").quantity).to eq(599.584916)
    end

    it "converts to J/C" do
      expect(subject.convert_to("J/C").quantity).to eq(599.584916)
    end
  end

  describe "W/A" do
    subject { described_class.new(2, "W/A") }

    it "converts to V" do
      expect(subject.convert_to("V").quantity).to eq(2)
    end

    it "converts to abV" do
      expect(subject.convert_to("abV").quantity).to eq(2e+8)
    end

    it "converts to statV" do
      expect(subject.convert_to("statV").quantity).to eq(0.00667128190396304)
    end

    it "converts to W/A" do
      expect(subject.convert_to("W/A").quantity).to eq(2)
    end
  end

  describe "J/C" do
    subject { described_class.new(2, "J/C") }

    it "converts to V" do
      expect(subject.convert_to("V").quantity).to eq(2)
    end

    it "converts to abV" do
      expect(subject.convert_to("abV").quantity).to eq(2e+8)
    end

    it "converts to statV" do
      expect(subject.convert_to("statV").quantity).to eq(0.00667128190396304)
    end

    it "converts to W/A" do
      expect(subject.convert_to("W/A").quantity).to eq(2)
    end
  end
end
