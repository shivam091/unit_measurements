# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/radioactivity_spec.rb

RSpec.describe UnitMeasurements::Radioactivity do
  describe "Bq" do
    subject { described_class.new(5, "Bq") }

    it "converts to Ci" do
      expect(subject.convert_to("Ci").quantity).to eq(1.35135135135135e-10)
    end

    it "converts to Rd" do
      expect(subject.convert_to("Rd").quantity).to eq(5e-6)
    end
  end
end
