# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/magnetic_flux_spec.rb

RSpec.describe UnitMeasurements::MagneticFlux do
  describe "Wb" do
    subject { described_class.new(10, "Wb") }

    it "converts to Mx" do
      expect(subject.convert_to("Mx").quantity).to eq(1e+9)
    end

    it "converts to T·m²" do
      expect(subject.convert_to("T·m²").quantity).to eq(10)
    end

    it "converts to G·cm²" do
      expect(subject.convert_to("G·cm²").quantity).to eq(1e+9)
    end
  end

  describe "Mx" do
    subject { described_class.new(10, "Mx") }

    it "converts to Wb" do
      expect(subject.convert_to("Wb").quantity).to eq(1e-7)
    end

    it "converts to T·m²" do
      expect(subject.convert_to("T·m²").quantity).to eq(1e-7)
    end

    it "converts to G·cm²" do
      expect(subject.convert_to("G·cm²").quantity).to eq(10)
    end
  end

  describe "T·m²" do
    subject { described_class.new(10, "T·m²") }

    it "converts to Mx" do
      expect(subject.convert_to("Mx").quantity).to eq(1e+9)
    end

    it "converts to Wb" do
      expect(subject.convert_to("Wb").quantity).to eq(10)
    end

    it "converts to G·cm²" do
      expect(subject.convert_to("G·cm²").quantity).to eq(1e+9)
    end
  end

  describe "G·cm²" do
    subject { described_class.new(10, "G·cm²") }

    it "converts to Mx" do
      expect(subject.convert_to("Mx").quantity).to eq(10)
    end

    it "converts to Wb" do
      expect(subject.convert_to("Wb").quantity).to eq(1e-7)
    end

    it "converts to T·m²" do
      expect(subject.convert_to("T·m²").quantity).to eq(1e-7)
    end
  end
end
