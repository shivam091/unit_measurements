# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/angular_velocity_spec.rb

RSpec.describe UnitMeasurements::AngularVelocity do
  describe "rad/s" do
    subject { described_class.new(5, "rad/s") }

    it "converts to rad/min" do
      expect(subject.convert_to("rad/min").quantity).to eq(300)
    end

    it "converts to rad/h" do
      expect(subject.convert_to("rad/h").quantity).to eq(18000)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(286.478897565412)
    end

    it "converts to deg/min" do
      expect(subject.convert_to("deg/min").quantity).to eq(17188.7338539247)
    end

    it "converts to deg/h" do
      expect(subject.convert_to("deg/h").quantity).to eq(1.03132403123548e+6)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.795774715459477)
    end

    it "converts to rev/min" do
      expect(subject.convert_to("rev/min").quantity).to eq(47.7464829275686)
    end

    it "converts to rev/h" do
      expect(subject.convert_to("rev/h").quantity).to eq(2864.78897565412)
    end

    it "converts to gon/s" do
      expect(subject.convert_to("gon/s").quantity).to eq(318.309886183791)
    end

    it "converts to gon/min" do
      expect(subject.convert_to("gon/min").quantity).to eq(19098.5931710274)
    end

    it "converts to gon/h" do
      expect(subject.convert_to("gon/h").quantity).to eq(1.14591559026165e+6)
    end
  end
end
