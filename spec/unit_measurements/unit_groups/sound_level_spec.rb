# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/sound_level_spec.rb

RSpec.describe UnitMeasurements::SoundLevel do
  describe "B" do
    subject { described_class.new(5, "B") }

    it "converts to dB" do
      expect(subject.convert_to("dB").quantity).to eq(50)
    end

    it "converts to Np" do
      expect(subject.convert_to("Np").quantity).to eq(5.75646273248512)
    end
  end
end
