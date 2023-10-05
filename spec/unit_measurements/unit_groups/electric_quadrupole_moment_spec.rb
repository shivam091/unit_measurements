# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electric_quadrupole_moment_spec.rb

RSpec.describe UnitMeasurements::ElectricQuadrupoleMoment do
  describe "C·m²" do
    subject { described_class.new(2, "C·m²") }

    it "converts to statC·cm²" do
      expect(subject.convert_to("statC·cm²").quantity).to eq(5.99584907368629e+13)
    end

    it "converts to B" do
      expect(subject.convert_to("B").quantity).to eq(5.99584907368629e+39)
    end
  end

  describe "statC·cm²" do
    subject { described_class.new(2, "statC·cm²") }

    it "converts to C·m²" do
      expect(subject.convert_to("C·m²").quantity).to eq(6.671282e-14)
    end

    it "converts to B" do
      expect(subject.convert_to("B").quantity).to eq(2e+26)
    end
  end

  describe "B" do
    subject { described_class.new(2, "B") }

    it "converts to C·m²" do
      expect(subject.convert_to("C·m²").quantity).to eq(6.671282e-40)
    end

    it "converts to statC·cm²" do
      expect(subject.convert_to("statC·cm²").quantity).to eq(2e-26)
    end
  end
end
