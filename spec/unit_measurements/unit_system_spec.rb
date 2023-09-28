# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_system_spec.rb

RSpec.describe UnitMeasurements::UnitSystem do
  let(:g) { UnitMeasurements::Unit.new(:g, value: 1, aliases: [:gram]) }
  let(:kg) { UnitMeasurements::Unit.new(:kg, value: "1000 kg", aliases: [:kilogram]) }

  subject(:unit_system) { described_class.new(:metric) }

  describe "#initialize" do
    it "creates a unit system with a name" do
      expect(unit_system.name).to eq(:metric)
    end

    it "initializes units as an empty array" do
      expect(unit_system.units).to be_empty
    end

    it "initializes primitive as nil" do
      expect(unit_system.primitive).to be_nil
    end
  end

  describe "#add_unit" do
    it "adds a unit to the system" do
      unit_system.add_unit(g)

      expect(unit_system.units).to include(g)
    end
  end

  describe "#set_primitive" do
    it "sets the primitive unit" do
      unit_system.add_unit(g)
      unit_system.set_primitive(g)

      expect(unit_system.primitive).to eq(g)
    end

    it "raises UnitError if unit is not found" do
      expect {
        unit_system.set_primitive(:kg)
      }.to raise_error(UnitMeasurements::UnitError, "Invalid unit: 'kg'.")
    end
  end
end
