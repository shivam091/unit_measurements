# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/radioactivity_spec.rb

RSpec.describe UnitMeasurements::Radioactivity do
  describe "Bq" do
    subject { described_class.new(2, "Bq") }

    it "converts to Ci" do
      expect(subject.convert_to("Ci").quantity).to eq(5.40540540540541e-11)
    end

    it "converts to Rd" do
      expect(subject.convert_to("Rd").quantity).to eq(2e-6)
    end
  end

  describe "Ci" do
    subject { described_class.new(2, "Ci") }

    it "converts to Bq" do
      expect(subject.convert_to("Bq").quantity).to eq(7.4e+10)
    end

    it "converts to Rd" do
      expect(subject.convert_to("Rd").quantity).to eq(7.4e+4)
    end
  end

  describe "Rd" do
    subject { described_class.new(2, "Rd") }

    it "converts to Bq" do
      expect(subject.convert_to("Bq").quantity).to eq(2e+6)
    end

    it "converts to Ci" do
      expect(subject.convert_to("Ci").quantity).to eq(5.40540540540541e-5)
    end
  end
end
