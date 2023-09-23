# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electric_current_spec.rb

RSpec.describe UnitMeasurements::ElectricCurrent do
  describe "A" do
    subject { described_class.new(10, "A") }

    it "converts to abA" do
      expect(subject.convert_to("abA").quantity).to eq(1)
    end

    it "converts to Bi" do
      expect(subject.convert_to("Bi").quantity).to eq(1)
    end

    it "converts to statA" do
      expect(subject.convert_to("statA").quantity).to eq(2.99792543559857e+10)
    end
  end

  describe "abA" do
    subject { described_class.new(10, "abA") }

    it "converts to A" do
      expect(subject.convert_to("A").quantity).to eq(100)
    end

    it "converts to Bi" do
      expect(subject.convert_to("Bi").quantity).to eq(10)
    end

    it "converts to statA" do
      expect(subject.convert_to("statA").quantity).to eq(2.99792543559857e+11)
    end
  end

  describe "Bi" do
    subject { described_class.new(10, "Bi") }

    it "converts to A" do
      expect(subject.convert_to("A").quantity).to eq(100)
    end

    it "converts to abA" do
      expect(subject.convert_to("abA").quantity).to eq(10)
    end

    it "converts to statA" do
      expect(subject.convert_to("statA").quantity).to eq(2.99792543559857e+11)
    end
  end

  describe "statA" do
    subject { described_class.new(10, "statA") }

    it "converts to A" do
      expect(subject.convert_to("A").quantity).to eq(3.33564e-09)
    end

    it "converts to abA" do
      expect(subject.convert_to("abA").quantity).to eq(3.33564e-10)
    end

    it "converts to Bi" do
      expect(subject.convert_to("Bi").quantity).to eq(3.33564e-10)
    end
  end
end
