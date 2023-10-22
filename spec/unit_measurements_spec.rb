# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

RSpec.describe UnitMeasurements do
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
