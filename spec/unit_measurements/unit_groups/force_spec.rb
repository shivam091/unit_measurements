# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/force_spec.rb

RSpec.describe UnitMeasurements::Force do
  describe "N" do
    subject { described_class.new(5, "N") }

    it "converts to p" do
      expect(subject.convert_to("p").quantity).to eq(509.858106488964)
    end

    it "converts to gf" do
      expect(subject.convert_to("gf").quantity).to eq(509.858106488964)
    end

    it "converts to tf" do
      expect(subject.convert_to("tf").quantity).to eq(0.000562022357749276)
    end

    it "converts to sn" do
      expect(subject.convert_to("sn").quantity).to eq(0.005)
    end

    it "converts to dyn" do
      expect(subject.convert_to("dyn").quantity).to eq(5e+5)
    end

    it "converts to kgf" do
      expect(subject.convert_to("kgf").quantity).to eq(0.509858106488964)
    end

    it "converts to ozf" do
      expect(subject.convert_to("ozf").quantity).to eq(17.9847154479768)
    end

    it "converts to lbf" do
      expect(subject.convert_to("lbf").quantity).to eq(1.12404471549855)
    end

    it "converts to pdl" do
      expect(subject.convert_to("pdl").quantity).to eq(36.1650692560495)
    end

    it "converts to tnf" do
      expect(subject.convert_to("tnf").quantity).to eq(0.000562022357749276)
    end

    it "converts to LTf" do
      expect(subject.convert_to("LTf").quantity).to eq(0.000501805676561854)
    end

    it "converts to mgvf" do
      expect(subject.convert_to("mgvf").quantity).to eq(509.858106488964)
    end

    it "converts to kipf" do
      expect(subject.convert_to("kipf").quantity).to eq(0.00112404471549855)
    end

    it "converts to (lb⋅m)/s²" do
      expect(subject.convert_to("(lb⋅m)/s²").quantity).to eq(11.0231131092439)
    end

    it "converts to (lb⋅ft)/s²" do
      expect(subject.convert_to("(lb⋅ft)/s²").quantity).to eq(36.1650692560495)
    end

    it "converts to (lb⋅in)/s²" do
      expect(subject.convert_to("(lb⋅in)/s²").quantity).to eq(433.980831072594)
    end

    it "converts to Fₚ" do
      expect(subject.convert_to("Fₚ").quantity).to eq(4.13120713872594e-44)
    end
  end
end
