# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/density_spec.rb

RSpec.describe UnitMeasurements::Density do
  describe "g/m³" do
    subject { described_class.new(5, "g/m³") }

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(0.005)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(0.005)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(5e-6)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(5e-6)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(0.00499423684545558)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(2.89018336065439e-6)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(0.000801793028453909)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(0.000312139802957891)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(1.80636460001744e-7)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(5.01120642763603e-5)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(9.7016016597705e-6)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(5.61435290953496e-9)
    end
  end
end
