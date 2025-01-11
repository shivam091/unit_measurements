# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/extras/numeric_methods_spec.rb

RSpec.describe UnitMeasurements::NumericMethods do
  let(:unit_group) { UnitMeasurements::Length }
  let(:m) { unit_group.unit_for!(:m) }
  let(:cm) { unit_group.unit_for!(:cm) }

  context "when units are specified" do
    it "defines methods for specified units" do
      unit_group.define_numeric_methods("m", "cm")

      expect(Numeric.method_defined?("m")).to be_truthy
      expect(Numeric.method_defined?("cm")).to be_truthy

      expect(1.cm).to be_instance_of(unit_group)
    end
  end

  context "when units are specified" do
    it "defines methods for all units within the unit group" do
      unit_group.define_numeric_methods

      expect(Numeric.method_defined?("ft")).to be_truthy
      expect(Numeric.method_defined?("in")).to be_truthy

      expect(1.ft).to be_instance_of(unit_group)
    end
  end
end
