# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/weight_spec.rb

RSpec.describe UnitMeasurements::Weight do
  describe "g" do
    subject { described_class.new(5, "g") }

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(5e-5)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(5e-6)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(0.04903325)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(3.85808958823536)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(25)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(3.01107064505837e+24)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(0.0110231131092439)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(0.000787365222088848)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(0.176369809747902)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(77.1617917647071)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(2.82191695596643)
    end

    it "converts to tn" do
      expect(subject.convert_to("tn").quantity).to eq(5.51155655462194e-6)
    end

    it "converts to LT" do
      expect(subject.convert_to("LT").quantity).to eq(4.9210326380553e-6)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(0.16075373284314)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(3.2150746568628)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(1.28602986274512)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(0.013396144403595)
    end

    it "converts to hyl" do
      expect(subject.convert_to("hyl").quantity).to eq(0.000509858106488964)
    end

    it "converts to cwt" do
      expect(subject.convert_to("cwt").quantity).to eq(0.0000984206527611061)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.000342608829245948)
    end

    it "converts to cwt (US)" do
      expect(subject.convert_to("cwt (US)").quantity).to eq(0.000110231131092439)
    end

    it "converts to mₚ" do
      expect(subject.convert_to("mₚ").quantity).to eq(2.29733591737677e+5)
    end
  end
end
