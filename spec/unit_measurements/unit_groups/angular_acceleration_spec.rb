# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/angular_acceleration_spec.rb

RSpec.describe UnitMeasurements::AngularAcceleration do
  describe "rad/s²" do
    subject { described_class.new(5, "rad/s²") }

    it "converts to deg/s²" do
      expect(subject.convert_to("deg/s²").quantity).to eq(286.478897565412)
    end

    it "converts to gon/s²" do
      expect(subject.convert_to("gon/s²").quantity).to eq(318.309886183791)
    end
  end
end
