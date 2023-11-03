# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/pressure_spec.rb

RSpec.describe UnitMeasurements::Pressure do
  describe "Pa" do
    subject { described_class.new(5, "Pa") }

    it "converts to bar" do
      expect(subject.convert_to("bar").quantity).to eq(0.00005)
    end

    it "converts to Ba" do
      expect(subject.convert_to("Ba").quantity).to eq(50)
    end

    it "converts to pz" do
      expect(subject.convert_to("pz").quantity).to eq(0.005)
    end

    it "converts to at" do
      expect(subject.convert_to("at").quantity).to eq(0.0000509858106488964)
    end

    it "converts to atm" do
      expect(subject.convert_to("atm").quantity).to eq(4.93461633358006e-5)
    end

    it "converts to Torr" do
      expect(subject.convert_to("Torr").quantity).to eq(0.0375030841352085)
    end
  end
end
