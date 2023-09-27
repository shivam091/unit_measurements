# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/acceleration_spec.rb

RSpec.describe UnitMeasurements::Acceleration do
  describe "m/s²" do
    subject { described_class.new(2, "m/s²") }

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(78.740157480315)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(6.56167979002625)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(3.8876893207507)
    end
  end

  describe "in/s²" do
    subject { described_class.new(2, "in/s²") }

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(0.0508)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(0.166666666666667)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(0.0987473087470677)
    end
  end

  describe "ft/s²" do
    subject { described_class.new(2, "ft/s²") }

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(0.6096)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(24)
    end

    it "converts to Kn/s" do
      expect(subject.convert_to("Kn/s").quantity).to eq(1.18496770496481)
    end
  end

  describe "Kn/s" do
    subject { described_class.new(2, "Kn/s") }

    it "converts to m/s²" do
      expect(subject.convert_to("m/s²").quantity).to eq(1.0288888)
    end

    it "converts to in/s²" do
      expect(subject.convert_to("in/s²").quantity).to eq(40.5074330708661)
    end

    it "converts to ft/s²" do
      expect(subject.convert_to("ft/s²").quantity).to eq(3.37561942257218)
    end
  end
end
