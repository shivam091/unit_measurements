# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_group_builder_spec.rb

RSpec.describe UnitMeasurements::UnitGroupBuilder do
  subject { described_class.new }

  describe "#primitive" do
    it "sets the primitive unit" do
      subject.primitive(:m)
      expect(subject.instance_variable_get(:@primitive)).to eq(:m)
    end

    it "raises an error if primitive unit is set more than once" do
      subject.primitive :m

      expect {
        subject.primitive :m
      }.to raise_error(UnitMeasurements::PrimitiveUnitAlreadySetError, "The primitive unit is already set for the unit group.")
    end
  end

  describe "#unit" do
    context "when value is not specified" do
      it "sets value 1 to the unit" do
        subject.unit(:m, aliases: [:meter])
        units = subject.units

        expect(units[0].value).to eq(1)
      end
    end

    context "when adding the unit with unique name" do
      it "adds a unit to the list of units" do
        subject.unit(:cm, value: "0.01 m", aliases: [:centimeter, :centimeters])
        units = subject.units

        expect(units.size).to eq(1)
        expect(units[0].name).to eq("cm")
        expect(units[0].value).to eq("0.01 m")
        expect(units[0].aliases).to eq(Set.new(["centimeter", "centimeters"]))
      end
    end

    context "when adding unit with duplicate name" do
      it "raises an error" do
        subject.unit(:cm, value: "0.01 m", aliases: [:centimeter, :centimeters])

        expect {
          subject.unit(:cm, value: "0.01 m", aliases: [:centimeter])
        }.to raise_error(UnitMeasurements::UnitAlreadyDefinedError, "Unit already defined: 'cm'.")
      end
    end
  end

  describe "#si_unit" do
    it "adds the unit along with all SI prefixes" do
      subject.si_unit(:m, aliases: [:meter, :meters])
      units = subject.units
      unit_group = subject.build

      expect(units.size).to eq(25)
      expect(unit_group.unit_names).to eq(["Em", "Gm", "Mm", "Pm", "Qm", "Rm", "Tm", "Ym", "Zm", "am", "cm", "dam", "dm", "fm", "hm", "km", "m", "mm", "nm", "pm", "qm", "rm", "ym", "zm", "μm"])
    end
  end

  describe "#build" do
    it "creates a unit group with the defined units & systems" do
      subject.unit(:m, aliases: [:meter])
      subject.unit(:cm, value: "0.01 m", aliases: [:centimeter, :centimeters])

      unit_group = subject.build

      expect(unit_group).to be_a(UnitMeasurements::UnitGroup)
      expect(unit_group.units.size).to eq(2)
    end
  end
end
