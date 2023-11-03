# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electric_quadrupole_moment_spec.rb

RSpec.describe UnitMeasurements::ElectricQuadrupoleMoment do
  describe "C·m²" do
    subject { described_class.new(5, "C·m²") }

    it "converts to B" do
      expect(subject.convert_to("B").quantity).to eq(1.49896226842157e+40)
    end

    it "converts to statC·cm²" do
      expect(subject.convert_to("statC·cm²").quantity).to eq(1.49896226842157e+14)
    end
  end
end
