# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/extras/conversion_methods_spec.rb

RSpec.describe UnitMeasurements::ConversionMethods do
  let(:unit_group) { UnitMeasurements::Length }
  let(:measurement) { unit_group.new(1, "ft") }

  context "when units are specified" do
    it "defines methods for specified units" do
      unit_group.define_conversion_methods("m", "cm")

      expect(unit_group.method_defined?("to_m")).to be_truthy
      expect(unit_group.method_defined?("to_cm")).to be_truthy

      expect(measurement).to respond_to(:to_m)
      expect(measurement).to respond_to(:in_m)
      expect(measurement).to respond_to(:as_m)

      expect(measurement.to_m.to_s).to eq("0.3048 m")
    end
  end

  context "when units are specified" do

    it "defines methods for all units within the unit group" do
      unit_group.define_conversion_methods

      expect(unit_group.method_defined?("to_ft")).to be_truthy
      expect(unit_group.method_defined?("to_in")).to be_truthy

      expect(measurement).to respond_to(:to_in)
      expect(measurement).to respond_to(:to_inch)
      expect(measurement).to respond_to(:to_inches)

      expect(measurement.to_in.to_s).to eq("12.0 in")
    end
  end
end
