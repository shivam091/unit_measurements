# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/pressure_spec.rb

RSpec.describe UnitMeasurements::Pressure do
  describe "Pa" do
    subject { described_class.new(5, "Pa") }

    it "converts to Ba" do
      expect(subject.convert_to("Ba").quantity).to eq(50)
    end

    it "converts to pz" do
      expect(subject.convert_to("pz").quantity).to eq(0.005)
    end

    it "converts to at" do
      expect(subject.convert_to("at").quantity).to eq(5.09858106488964e-5)
    end

    it "converts to bar" do
      expect(subject.convert_to("bar").quantity).to eq(5e-5)
    end

    it "converts to atm" do
      expect(subject.convert_to("atm").quantity).to eq(4.93461633358006e-5)
    end

    it "converts to psf" do
      expect(subject.convert_to("psf").quantity).to eq(0.104427171122863)
    end

    it "converts to psi" do
      expect(subject.convert_to("psi").quantity).to eq(0.000725188719486415)
    end

    it "converts to ksi" do
      expect(subject.convert_to("ksi").quantity).to eq(7.25188719486415e-7)
    end

    it "converts to Torr" do
      expect(subject.convert_to("Torr").quantity).to eq(0.0375030841352085)
    end

    it "converts to μmHg" do
      expect(subject.convert_to("μmHg").quantity).to eq(37.5030787922828)
    end

    it "converts to mmHg" do
      expect(subject.convert_to("mmHg").quantity).to eq(0.0375030787922828)
    end

    it "converts to cmHg" do
      expect(subject.convert_to("cmHg").quantity).to eq(0.00375030787922828)
    end

    it "converts to inHg" do
      expect(subject.convert_to("inHg").quantity).to eq(0.0014764991650505)
    end

    it "converts to ftHg" do
      expect(subject.convert_to("ftHg").quantity).to eq(0.000123041597087542)
    end

    it "converts to mH₂O" do
      expect(subject.convert_to("mH₂O").quantity).to eq(0.000509858106488964)
    end

    it "converts to dmH₂O" do
      expect(subject.convert_to("dmH₂O").quantity).to eq(0.00509858106488964)
    end

    it "converts to cmH₂O" do
      expect(subject.convert_to("cmH₂O").quantity).to eq(0.0509858106488964)
    end

    it "converts to mmH₂O" do
      expect(subject.convert_to("mmH₂O").quantity).to eq(0.509858106488964)
    end

    it "converts to ftH₂O" do
      expect(subject.convert_to("ftH₂O").quantity).to eq(0.00167281146076588)
    end

    it "converts to inH₂O" do
      expect(subject.convert_to("inH₂O").quantity).to eq(0.0200731546046412)
    end

    it "converts to LT/ft²" do
      expect(subject.convert_to("LT/ft²").quantity).to eq(4.6619272841854e-5)
    end

    it "converts to tn/ft²" do
      expect(subject.convert_to("tn/ft²").quantity).to eq(5.22135855614315e-5)
    end

    it "converts to pdl/ft²" do
      expect(subject.convert_to("pdl/ft²").quantity).to eq(3.35984474829387)
    end

    it "converts to kgf/m²" do
      expect(subject.convert_to("kgf/m²").quantity).to eq(0.509858106488964)
    end

    it "converts to kgf/dm²" do
      expect(subject.convert_to("kgf/dm²").quantity).to eq(0.00509858106488964)
    end

    it "converts to kgf/mm²" do
      expect(subject.convert_to("kgf/mm²").quantity).to eq(5.09858106488964e-7)
    end
  end
end
