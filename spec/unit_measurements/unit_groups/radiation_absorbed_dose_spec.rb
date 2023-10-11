# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/radiation_absorbed_dose_spec.rb

RSpec.describe UnitMeasurements::RadiationAbsorbedDose do
  describe "Gy" do
    subject { described_class.new(2, "Gy") }

    it "converts to erg/g" do
      expect(subject.convert_to("erg/g").quantity).to eq(20000)
    end

    it "converts to rad" do
      expect(subject.convert_to("rad").quantity).to eq(200)
    end
  end

  describe "erg/g" do
    subject { described_class.new(2, "erg/g") }

    it "converts to Gy" do
      expect(subject.convert_to("Gy").quantity).to eq(0.0002)
    end

    it "converts to rad" do
      expect(subject.convert_to("rad").quantity).to eq(0.02)
    end
  end

  describe "rad" do
    subject { described_class.new(2, "rad") }

    it "converts to Gy" do
      expect(subject.convert_to("Gy").quantity).to eq(0.02)
    end

    it "converts to erg/g" do
      expect(subject.convert_to("erg/g").quantity).to eq(200)
    end
  end
end
