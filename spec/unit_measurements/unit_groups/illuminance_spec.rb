# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/illuminance_spec.rb

RSpec.describe UnitMeasurements::Illuminance do
  describe "lx" do
    subject { described_class.new(5, "lx") }

    it "converts to ph" do
      expect(subject.convert_to("ph").quantity).to eq(0.0005)
    end

    it "converts to fc" do
      expect(subject.convert_to("fc").quantity).to eq(0.464515199987473)
    end

    it "converts to nx" do
      expect(subject.convert_to("nx").quantity).to eq(5000)
    end
  end
end
