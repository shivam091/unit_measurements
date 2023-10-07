# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/illuminance_spec.rb

RSpec.describe UnitMeasurements::Illuminance do
  describe "lx" do
    subject { described_class.new(2, "lx") }

    it "converts to ph" do
      expect(subject.convert_to("ph").quantity).to eq(0.0002)
    end

    it "converts to fc" do
      expect(subject.convert_to("fc").quantity).to eq(0.185806079994989)
    end

    it "converts to nx" do
      expect(subject.convert_to("nx").quantity).to eq(2000)
    end
  end

  describe "ph" do
    subject { described_class.new(2, "ph") }

    it "converts to lx" do
      expect(subject.convert_to("lx").quantity).to eq(20000)
    end

    it "converts to fc" do
      expect(subject.convert_to("fc").quantity).to eq(1858.06079994989)
    end

    it "converts to nx" do
      expect(subject.convert_to("nx").quantity).to eq(2e+7)
    end
  end

  describe "fc" do
    subject { described_class.new(2, "fc") }

    it "converts to lx" do
      expect(subject.convert_to("lx").quantity).to eq(21.527820834)
    end

    it "converts to ph" do
      expect(subject.convert_to("ph").quantity).to eq(0.0021527820834)
    end

    it "converts to nx" do
      expect(subject.convert_to("nx").quantity).to eq(21527.820834)
    end
  end

  describe "nx" do
    subject { described_class.new(2, "nx") }

    it "converts to lx" do
      expect(subject.convert_to("lx").quantity).to eq(0.002)
    end

    it "converts to ph" do
      expect(subject.convert_to("ph").quantity).to eq(2e-7)
    end

    it "converts to fc" do
      expect(subject.convert_to("fc").quantity).to eq(0.000185806079994989)
    end
  end
end
