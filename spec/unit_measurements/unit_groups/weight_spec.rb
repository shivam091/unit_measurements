# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/weight_spec.rb

RSpec.describe UnitMeasurements::Weight do
  describe "g" do
    subject { described_class.new(5, "kg") }

    it "converts to q" do
      expect(subject.convert_to("q").quantity).to eq(0.05)
    end

    it "converts to t" do
      expect(subject.convert_to("t").quantity).to eq(0.005)
    end

    it "converts to N" do
      expect(subject.convert_to("N").quantity).to eq(49.03325)
    end

    it "converts to s" do
      expect(subject.convert_to("s").quantity).to eq(3858.08958823536)
    end

    it "converts to ct" do
      expect(subject.convert_to("ct").quantity).to eq(25000)
    end

    it "converts to Da" do
      expect(subject.convert_to("Da").quantity).to eq(3.01107064505837e+27)
    end

    it "converts to lb" do
      expect(subject.convert_to("lb").quantity).to eq(11.0231131092439)
    end

    it "converts to st" do
      expect(subject.convert_to("st").quantity).to eq(0.787365222088848)
    end

    it "converts to oz" do
      expect(subject.convert_to("oz").quantity).to eq(176.369809747902)
    end

    it "converts to gr" do
      expect(subject.convert_to("gr").quantity).to eq(77161.7917647071)
    end

    it "converts to dr" do
      expect(subject.convert_to("dr").quantity).to eq(2821.91695596643)
    end

    it "converts to tn" do
      expect(subject.convert_to("tn").quantity).to eq(0.00551155655462194)
    end

    it "converts to LT" do
      expect(subject.convert_to("LT").quantity).to eq(0.0049210326380553)
    end

    it "converts to qr" do
      expect(subject.convert_to("qr").quantity).to eq(0.393682611044424)
    end

    it "converts to ozt" do
      expect(subject.convert_to("ozt").quantity).to eq(160.75373284314)
    end

    it "converts to dwt" do
      expect(subject.convert_to("dwt").quantity).to eq(3215.0746568628)
    end

    it "converts to drt" do
      expect(subject.convert_to("drt").quantity).to eq(1286.02986274512)
    end

    it "converts to lbt" do
      expect(subject.convert_to("lbt").quantity).to eq(13.396144403595)
    end

    it "converts to hyl" do
      expect(subject.convert_to("hyl").quantity).to eq(0.509858106488964)
    end

    it "converts to cwt" do
      expect(subject.convert_to("cwt").quantity).to eq(0.0984206527611061)
    end

    it "converts to fir" do
      expect(subject.convert_to("fir").quantity).to eq(0.196841305522212)
    end

    it "converts to us_qr" do
      expect(subject.convert_to("us_qr").quantity).to eq(0.440924524369755)
    end

    it "converts to slug" do
      expect(subject.convert_to("slug").quantity).to eq(0.342608829245948)
    end

    it "converts to us_cwt" do
      expect(subject.convert_to("us_cwt").quantity).to eq(0.110231131092439)
    end

    it "converts to mₚ" do
      expect(subject.convert_to("mₚ").quantity).to eq(2.29733591737677e+8)
    end
  end
end
