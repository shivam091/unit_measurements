# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/resistance_spec.rb

RSpec.describe UnitMeasurements::Resistance do
  describe "Ω" do
    subject { described_class.new(10, "Ω") }

    it "converts to abΩ" do
      expect(subject.convert_to("abΩ").quantity).to eq(1e+10)
    end

    it "converts to statΩ" do
      expect(subject.convert_to("statΩ").quantity).to eq(1.11265005605339e-11)
    end

    it "converts to S" do
      expect(subject.convert_to("S").quantity).to eq(10)
    end

    it "converts to V/A" do
      expect(subject.convert_to("V/A").quantity).to eq(10)
    end
  end

  describe "abΩ" do
    subject { described_class.new(10, "abΩ") }

    it "converts to Ω" do
      expect(subject.convert_to("Ω").quantity).to eq(1e-8)
    end

    it "converts to statΩ" do
      expect(subject.convert_to("statΩ").quantity).to eq(1.11265005605339e-20)
    end

    it "converts to S" do
      expect(subject.convert_to("S").quantity).to eq(1e-8)
    end

    it "converts to V/A" do
      expect(subject.convert_to("V/A").quantity).to eq(1e-8)
    end
  end

  describe "statΩ" do
    subject { described_class.new(10, "statΩ") }

    it "converts to Ω" do
      expect(subject.convert_to("Ω").quantity).to eq(8.98755178737e+12)
    end

    it "converts to abΩ" do
      expect(subject.convert_to("abΩ").quantity).to eq(8.98755178737e+21)
    end

    it "converts to S" do
      expect(subject.convert_to("S").quantity).to eq(8.98755178737e+12)
    end

    it "converts to V/A" do
      expect(subject.convert_to("V/A").quantity).to eq(8.98755178737e+12)
    end
  end

  describe "S" do
    subject { described_class.new(10, "S") }

    it "converts to Ω" do
      expect(subject.convert_to("Ω").quantity).to eq(10)
    end

    it "converts to abΩ" do
      expect(subject.convert_to("abΩ").quantity).to eq(1e+10)
    end

    it "converts to statΩ" do
      expect(subject.convert_to("statΩ").quantity).to eq(1.11265005605339e-11)
    end

    it "converts to V/A" do
      expect(subject.convert_to("V/A").quantity).to eq(10)
    end
  end

  describe "V/A" do
    subject { described_class.new(10, "V/A") }

    it "converts to Ω" do
      expect(subject.convert_to("Ω").quantity).to eq(10)
    end

    it "converts to abΩ" do
      expect(subject.convert_to("abΩ").quantity).to eq(1e+10)
    end

    it "converts to statΩ" do
      expect(subject.convert_to("statΩ").quantity).to eq(1.11265005605339e-11)
    end

    it "converts to S" do
      expect(subject.convert_to("S").quantity).to eq(10)
    end
  end
end
