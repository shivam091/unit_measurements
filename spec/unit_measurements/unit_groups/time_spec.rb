# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/time_spec.rb

RSpec.describe UnitMeasurements::Time do
  describe "s" do
    subject { described_class.new(60, "s") }

    it "converts to h" do
      expect(subject.convert_to("h").quantity).to eq(0.0166666666666667)
    end

    it "converts to d" do
      expect(subject.convert_to("d").quantity).to eq(0.000694444444444444)
    end

    it "converts to wk" do
      expect(subject.convert_to("wk").quantity).to eq(9.92063492063492e-5)
    end

    it "converts to mo" do
      expect(subject.convert_to("mo").quantity).to eq(2.28310252080089e-5)
    end

    it "converts to yr" do
      expect(subject.convert_to("yr").quantity).to eq(1.90258751902588e-6)
    end

    it "converts to min" do
      expect(subject.convert_to("min").quantity).to eq(1)
    end

    it "converts to ftn" do
      expect(subject.convert_to("ftn").quantity).to eq(4.96031746031746e-5)
    end

    it "converts to qtr" do
      expect(subject.convert_to("qtr").quantity).to eq(7.61034173600297e-6)
    end

    it "converts to dec" do
      expect(subject.convert_to("dec").quantity).to eq(1.90258751902588e-7)
    end

    it "converts to cent" do
      expect(subject.convert_to("cent").quantity).to eq(1.90258751902588e-8)
    end

    it "converts to tₚ" do
      expect(subject.convert_to("tₚ").quantity).to eq(1.11291506399169e+45)
    end
  end
end
