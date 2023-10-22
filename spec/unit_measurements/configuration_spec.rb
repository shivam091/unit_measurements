# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/configuration_spec.rb

RSpec.describe UnitMeasurements::Configuration do
  describe "#initialize" do
    it "sets default values of configurable options" do
      config = described_class.new

      expect(config.use_cache).to be_falsey
    end
  end

  describe "#use_cache=" do
    it "sets use_cache to true" do
      config = described_class.new
      config.use_cache = true

      expect(config.use_cache).to be_truthy
    end

    it "sets use_cache to false" do
      config = described_class.new
      config.use_cache = false

      expect(config.use_cache).to be_falsey
    end

    it "raises BaseError for invalid input" do
      config = described_class.new

      expect { config.use_cache = "invalid" }.to raise_error(UnitMeasurements::BaseError, /only accepts true or false/)
    end
  end
end
