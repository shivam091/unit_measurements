# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_spec.rb

RSpec.describe UnitMeasurements::Unit do
  subject(:unit) do
    described_class.new(
      :unit_name,
      value: 1,
      aliases: [:alias1, :alias2],
      unit_group: nil
    )
  end

  describe "#initialize" do
    it "sets attributes correctly" do
      expect(unit.name).to eq("unit_name")
      expect(unit.value).to eq(1)
      expect(unit.aliases).to eq(Set.new(["alias1", "alias2"]))
      expect(unit.unit_group).to be_nil
    end

    it "does not add aliases that already exist" do
      expect((unit.aliases + ["alias1"])).to eq(Set.new(["alias1", "alias2"]))
    end
  end

  describe "#with" do
    it "returns a new instance with updated attributes" do
      new_unit = unit.with(name: :new_name, aliases: [:new_alias], unit_group: :new_group)
      expect(new_unit.name).to eq("new_name")
      expect(new_unit.aliases).to eq(Set.new(["new_alias"]))
      expect(new_unit.unit_group).to eq(:new_group)
    end
  end

  describe "#names" do
    it "returns sorted array of names and aliases" do
      expect(unit.names).to eq(["alias1", "alias2", "unit_name"])
    end
  end

  describe "#to_s" do
    it "returns the unit's name as a string" do
      expect(unit.to_s).to eq("unit_name")
    end
  end

  describe "#inspect" do
    it "returns a formatted string representation" do
      expect(unit.inspect).to eq("#<UnitMeasurements::Unit: unit_name (alias1, alias2)>")
    end
  end
end
