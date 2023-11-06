# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/energy_spec.rb

RSpec.describe UnitMeasurements::Energy do
  describe "J" do
    subject { described_class.new(5, "J") }

    it "converts to eV" do
      expect(subject.convert_to("eV").quantity).to eq(3.12075453723038e+19)
    end

    it "converts to Ry" do
      expect(subject.convert_to("Ry").quantity).to eq(2.29371265835792e+18)
    end

    it "converts to Ha" do
      expect(subject.convert_to("Ha").quantity).to eq(1.14685632917896e+18)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(1.19422948313748e-06)
    end

    it "converts to toe" do
      expect(subject.convert_to("toe").quantity).to eq(1.19422948313748e-10)
    end

    it "converts to tce" do
      expect(subject.convert_to("tce").quantity).to eq(1.70604211876783e-10)
    end

    it "converts to foe" do
      expect(subject.convert_to("foe").quantity).to eq(5e-44)
    end

    it "converts to boe" do
      expect(subject.convert_to("boe").quantity).to eq(8.53021059383914e-10)
    end

    it "converts to cal" do
      expect(subject.convert_to("cal").quantity).to eq(1.19422948313748)
    end

    it "converts to erg" do
      expect(subject.convert_to("erg").quantity).to eq(50000000)
    end

    it "converts to Btu" do
      expect(subject.convert_to("Btu").quantity).to eq(0.00473908560156659)
    end

    it "converts to thm" do
      expect(subject.convert_to("thm").quantity).to eq(4.73908560156659e-8)
    end

    it "converts to W⋅s" do
      expect(subject.convert_to("W⋅s").quantity).to eq(5)
    end

    it "converts to W⋅h" do
      expect(subject.convert_to("W⋅h").quantity).to eq(0.00138888888888889)
    end

    it "converts to quad" do
      expect(subject.convert_to("quad").quantity).to eq(4.73908560156659e-18)
    end

    it "converts to kW⋅h" do
      expect(subject.convert_to("kW⋅h").quantity).to eq(1.38888888888889e-6)
    end

    it "converts to kp⋅m" do
      expect(subject.convert_to("kp⋅m").quantity).to eq(0.509858106488964)
    end

    it "converts to hp⋅h" do
      expect(subject.convert_to("hp⋅h").quantity).to eq(1.86219739292365e-6)
    end

    it "converts to l⋅atm" do
      expect(subject.convert_to("l⋅atm").quantity).to eq(0.0493461633358006)
    end

    it "converts to ft⋅lbf" do
      expect(subject.convert_to("ft⋅lbf").quantity).to eq(3.68781074638633)
    end

    it "converts to in⋅lbf" do
      expect(subject.convert_to("in⋅lbf").quantity).to eq(44.2537289566359)
    end

    it "converts to ft⋅pdl" do
      expect(subject.convert_to("ft⋅pdl").quantity).to eq(118.65180202116)
    end

    it "converts to gal⋅atm" do
      expect(subject.convert_to("gal⋅atm").quantity).to eq(0.0108546384554201)
    end
  end
end
