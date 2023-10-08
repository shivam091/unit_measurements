# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/frequency_spec.rb

RSpec.describe UnitMeasurements::Frequency do
  describe "Hz" do
    subject { described_class.new(10, "Hz") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(62.8318530717959)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(3600)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(10)
    end
  end

  describe "rad/s" do
    subject { described_class.new(10, "rad/s") }

    it "converts to Hz" do
      expect(subject.convert_to("Hz").quantity).to eq(1.59154943091895)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(572.957795130823)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(1.59154943091895)
    end
  end

  describe "deg/s" do
    subject { described_class.new(10, "deg/s") }

    it "converts to Hz" do
      expect(subject.convert_to("Hz").quantity).to eq(0.0277777777777778)
    end

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(0.174532925199433)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.0277777777777778)
    end
  end

  describe "rev/s" do
    subject { described_class.new(10, "rev/s") }

    it "converts to Hz" do
      expect(subject.convert_to("Hz").quantity).to eq(10)
    end

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(62.8318530717959)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(3600)
    end
  end
end
