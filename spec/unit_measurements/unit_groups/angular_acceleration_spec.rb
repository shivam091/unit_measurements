# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/angular_acceleration_spec.rb

RSpec.describe UnitMeasurements::AngularAcceleration do
  describe "rad/s²" do
    subject { described_class.new(2, "rad/s²") }

    it "converts to deg/s²" do
      expect(subject.convert_to("deg/s²").quantity).to eq(114.591559026165)
    end

    it "converts to gon/s²" do
      expect(subject.convert_to("gon/s²").quantity).to eq(127.323954473516)
    end
  end

  describe "deg/s²" do
    subject { described_class.new(2, "deg/s²") }

    it "converts to rad/s²" do
      expect(subject.convert_to("rad/s²").quantity).to eq(0.0349065850398866)
    end

    it "converts to gon/s²" do
      expect(subject.convert_to("gon/s²").quantity).to eq(2.22222222222222)
    end
  end

  describe "gon/s²" do
    subject { described_class.new(2, "gon/s²") }

    it "converts to rad/s²" do
      expect(subject.convert_to("rad/s²").quantity).to eq(0.0314159265358979)
    end

    it "converts to deg/s²" do
      expect(subject.convert_to("deg/s²").quantity).to eq(1.8)
    end
  end
end
