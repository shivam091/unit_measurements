# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/capacitance_spec.rb

RSpec.describe UnitMeasurements::Capacitance do
  describe "F" do
    subject { described_class.new(10, "F") }

    it "converts to abF" do
      expect(subject.convert_to("abF").quantity).to eq(1e-8)
    end

    it "converts to statF" do
      expect(subject.convert_to("statF").quantity).to eq(8.98714837781972e+12)
    end

    it "converts to C/V" do
      expect(subject.convert_to("C/V").quantity).to eq(10)
    end
  end

  describe "abF" do
    subject { described_class.new(10, "abF") }

    it "converts to F" do
      expect(subject.convert_to("F").quantity).to eq(1e+10)
    end

    it "converts to statF" do
      expect(subject.convert_to("statF").quantity).to eq(8.98714837781972e+21)
    end

    it "converts to C/V" do
      expect(subject.convert_to("C/V").quantity).to eq(1e+10)
    end
  end

  describe "statF" do
    subject { described_class.new(10, "statF") }

    it "converts to F" do
      expect(subject.convert_to("F").quantity).to eq(1.1127e-11)
    end

    it "converts to abF" do
      expect(subject.convert_to("abF").quantity).to eq(1.1127e-20)
    end

    it "converts to C/V" do
      expect(subject.convert_to("C/V").quantity).to eq(1.1127e-11)
    end
  end

  describe "C/V" do
    subject { described_class.new(10, "C/V") }

    it "converts to F" do
      expect(subject.convert_to("F").quantity).to eq(10)
    end

    it "converts to abF" do
      expect(subject.convert_to("abF").quantity).to eq(1e-8)
    end

    it "converts to statF" do
      expect(subject.convert_to("statF").quantity).to eq(8.98714837781972e+12)
    end
  end
end
