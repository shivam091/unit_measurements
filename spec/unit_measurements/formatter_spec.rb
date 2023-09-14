# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/formatter_spec.rb

RSpec.describe UnitMeasurements::Formatter do
  describe "#format" do
    subject { UnitMeasurements::Length.parse("1 m to cm") }

    context "when format is specified" do
      it "formats measurement using specified format" do
        expect(subject.format("%.1<quantity>f %<unit>s")).to eq("100.0 cm")
        expect(subject.format("%.1<quantity>f")).to eq("100.0")
      end
    end

    context "when format is not specified" do
      it "formats measurement using default format" do
        expect(subject.format).to eq("100.00 cm")
      end
    end
  end
end
