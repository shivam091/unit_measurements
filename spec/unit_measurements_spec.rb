# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

RSpec.describe UnitMeasurements do
  describe ".build" do
    it "creates a new unit group based on provided block" do
      unit_group = UnitMeasurements.build do
        primitive "m"

        system :metric do
          si_unit "m", aliases: ["meter", "metre", "meters", "metres"]
        end

        system :imperial do
          unit "in", value: "25.4 mm", aliases: ['"', "inch", "inches"]
        end

        cache "length.json"
      end

      expect(unit_group).to be_a(Class)
      expect(unit_group.unit_group).to be_a(UnitMeasurements::UnitGroup)
    end

    it "returns a subclass of Measurement with defined units and conversions" do
      unit_group = UnitMeasurements.build do
        primitive "m"

        system :metric do
          si_unit "m", aliases: ["meter", "metre", "meters", "metres"]
        end

        system :imperial do
          unit "in", value: "25.4 mm", aliases: ['"', "inch", "inches"]
        end

        cache "length.json"
      end

      expect(unit_group.ancestors).to include(UnitMeasurements::Measurement)
      expect(unit_group.unit_group.units.length).to eq(26)
    end
  end

  describe ".configuration" do
    it "returns a Configuration instance" do
      expect(described_class.configuration).to be_an_instance_of(UnitMeasurements::Configuration)
    end
  end

  describe ".configure" do
    it "yields the configuration block" do
      expect { |block| described_class.configure(&block) }.to yield_with_args(described_class.configuration)
    end
  end

  describe ".reset" do
    it "resets the configuration to a new instance of Configuration" do
      custom_config = double("Custom Configuration")
      described_class.configuration = custom_config
      described_class.reset

      expect(described_class.configuration).not_to eq(custom_config)
      expect(described_class.configuration).to be_an_instance_of(UnitMeasurements::Configuration)
    end
  end
end
