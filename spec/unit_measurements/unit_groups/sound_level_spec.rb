# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/sound_level_spec.rb

RSpec.describe UnitMeasurements::SoundLevel do
  describe "B" do
    subject { described_class.new(2, :B) }

    it "converts to dB" do
      expect(subject.convert_to(:dB).quantity).to eq(20)
    end

    it "converts to Np" do
      expect(subject.convert_to(:Np).quantity).to eq(2.30258509299405)
    end
  end

  describe "dB" do
    subject { described_class.new(2, :dB) }

    it "converts to B" do
      expect(subject.convert_to(:B).quantity).to eq(0.2)
    end

    it "converts to Np" do
      expect(subject.convert_to(:Np).quantity).to eq(0.230258509299405)
    end
  end

  describe "Np" do
    subject { described_class.new(2, :Np) }

    it "converts to B" do
      expect(subject.convert_to(:B).quantity).to eq(1.73717792761301)
    end

    it "converts to dB" do
      expect(subject.convert_to(:dB).quantity).to eq(17.3717792761301)
    end
  end
end
