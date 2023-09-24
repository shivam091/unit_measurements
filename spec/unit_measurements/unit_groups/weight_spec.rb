# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/weight_spec.rb

RSpec.describe UnitMeasurements::Weight do
  describe "g" do
    subject { described_class.new(2, "g") }

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(2e-5)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(2e-6)
    end
  end

  describe "q" do
    subject { described_class.new(2, "q") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(2e+5)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(0.2)
    end
  end

  describe "t" do
    subject { described_class.new(2, "t") }

    it "converts to g" do
      expect(subject.convert_to("g").quantity).to eq(2e+6)
    end

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(20)
    end
  end
end
