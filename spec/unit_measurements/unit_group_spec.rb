# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_group_spec.rb

RSpec.describe UnitMeasurements::UnitGroup do
  let(:g) { UnitMeasurements::Unit.new(:g, value: 1, aliases: [:gram], system: :metric) }
  let(:kg) { UnitMeasurements::Unit.new(:kg, value: "1000 kg", aliases: [:kilogram], system: :metric) }

  subject(:unit_group) { described_class.new(:g, [g, kg]) }

  describe "#initialize" do
    it "sets attributes correctly" do
      expect(unit_group.units.size).to eq(2)
      expect(unit_group.units[0].inspect).to eq("#<UnitMeasurements::Unit: g (gram)>")
      expect(unit_group.units[1].inspect).to eq("#<UnitMeasurements::Unit: kg (kilogram)>")
    end
  end

  describe "#unit_for" do
    it "returns the unit for the given name" do
      expect(unit_group.unit_for("g").inspect).to eq("#<UnitMeasurements::Unit: g (gram)>")
      expect(unit_group.unit_for("kg").inspect).to eq("#<UnitMeasurements::Unit: kg (kilogram)>")
    end

    it "returns nil if the unit name is not found" do
      expect(unit_group.unit_for("unknown")).to be_nil
    end
  end

  describe "#unit_for!" do
    it "returns the unit for the given name" do
      expect(unit_group.unit_for!("kg").inspect).to eq("#<UnitMeasurements::Unit: kg (kilogram)>")
    end

    it "raises an error if the unit name is not found" do
      expect {
        unit_group.unit_for!("unknown")
      }.to raise_error(UnitMeasurements::UnitError, "Invalid unit: 'unknown'.")
    end
  end

  describe "#unit_name_to_unit" do
    it "returns the unit for the given name" do
      expect(unit_group.send(:unit_name_to_unit, "g").inspect).to eq("#<UnitMeasurements::Unit: g (gram)>")
      expect(unit_group.send(:unit_name_to_unit, "kg").inspect).to eq("#<UnitMeasurements::Unit: kg (kilogram)>")
    end

    it "returns nil if the unit name is not found" do
      expect(unit_group.send(:unit_name_to_unit, "unknown")).to be_nil
    end
  end

  describe "#unit_names" do
    it "returns array of unit names" do
      expect(unit_group.unit_names).to eq(["g", "kg"])
    end
  end

  describe "#unit_names_with_aliases" do
    it "returns array of unit names and aliases" do
      expect(unit_group.unit_names_with_aliases).to eq(["g", "gram", "kg", "kilogram"])
    end
  end

  describe "#defined?" do
    it "returns whether the unit is defined within the unit group" do
      expect(unit_group.defined?(:g)).to be_truthy
      expect(unit_group.defined?(:mg)).to be_falsy
      expect(unit_group.defined?(:gram)).to be_falsy
    end
  end

  describe "#unit_or_alias?" do
    it "returns if the unit is a valid unit or alias within the unit group" do
      expect(unit_group.unit_or_alias?(:g)).to be_truthy
      expect(unit_group.unit_or_alias?(:mg)).to be_falsy
      expect(unit_group.unit_or_alias?(:gram)).to be_truthy
    end
  end

  describe "#units_for" do
    it "returns array of units for the unit system name" do
      units = unit_group.units_for!(:metric)

      expect(units.size).to eq(2)
      expect(units[0].inspect).to eq("#<UnitMeasurements::Unit: g (gram)>")
      expect(units[1].inspect).to eq("#<UnitMeasurements::Unit: kg (kilogram)>")
    end
  end

  describe "#units_for!" do
    context "when valid unit system name is specified" do
      it "returns array of units for the unit system name" do
        units = unit_group.units_for!(:metric)

        expect(units.size).to eq(2)
        expect(units[0].inspect).to eq("#<UnitMeasurements::Unit: g (gram)>")
        expect(units[1].inspect).to eq("#<UnitMeasurements::Unit: kg (kilogram)>")
      end
    end

    context "when invalid unit system name is specified" do
      it "raises error" do
        expect {
          expect(unit_group.units_for!(:troy))
        }.to raise_error(UnitMeasurements::BaseError, "Invalid unit system 'troy' within the unit group.")
      end
    end
  end
end
