# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/dynamic_viscosity_spec.rb

RSpec.describe UnitMeasurements::DynamicViscosity do
  describe "Pa⋅s" do
    subject { described_class.new(5, "Pa⋅s") }

    it "converts to P" do
      expect(subject.convert_to("P").quantity).to eq(50)
    end

    it "converts to lb/(ft⋅s)" do
      expect(subject.convert_to("lb/(ft⋅s)").quantity).to eq(3.35984474829387)
    end

    it "converts to lb/(ft⋅h)" do
      expect(subject.convert_to("lb/(ft⋅h)").quantity).to eq(12095.4407687475)
    end

    it "converts to (lbf⋅s)/ft²" do
      expect(subject.convert_to("(lbf⋅s)/ft²").quantity).to eq(0.104427168941856)
    end

    it "converts to (lbf⋅s)/in²" do
      expect(subject.convert_to("(lbf⋅s)/in²").quantity).to eq(0.000725188719486416)
    end

    it "converts to Pl" do
      expect(subject.convert_to("Pl").quantity).to eq(5)
    end
  end

  describe "P" do
    subject { described_class.new(5, "P") }

    it "converts to Pa⋅s" do
      expect(subject.convert_to("Pa⋅s").quantity).to eq(0.5)
    end

    it "converts to lb/(ft⋅s)" do
      expect(subject.convert_to("lb/(ft⋅s)").quantity).to eq(0.335984474829387)
    end

    it "converts to lb/(ft⋅h)" do
      expect(subject.convert_to("lb/(ft⋅h)").quantity).to eq(1209.54407687475)
    end

    it "converts to (lbf⋅s)/ft²" do
      expect(subject.convert_to("(lbf⋅s)/ft²").quantity).to eq(0.0104427168941856)
    end

    it "converts to (lbf⋅s)/in²" do
      expect(subject.convert_to("(lbf⋅s)/in²").quantity).to eq(0.0000725188719486416)
    end

    it "converts to Pl" do
      expect(subject.convert_to("Pl").quantity).to eq(0.5)
    end
  end

  describe "lb/(ft⋅s)" do
    subject { described_class.new(5, "lb/(ft⋅s)") }

    it "converts to Pa⋅s" do
      expect(subject.convert_to("Pa⋅s").quantity).to eq(7.44082)
    end

    it "converts to P" do
      expect(subject.convert_to("P").quantity).to eq(74.4082)
    end

    it "converts to lb/(ft⋅h)" do
      expect(subject.convert_to("lb/(ft⋅h)").quantity).to eq(17999.9995161824)
    end

    it "converts to (lbf⋅s)/ft²" do
      expect(subject.convert_to("(lbf⋅s)/ft²").quantity).to eq(0.155404753441188)
    end

    it "converts to (lbf⋅s)/in²" do
      expect(subject.convert_to("(lbf⋅s)/in²").quantity).to eq(0.00107919974554578)
    end

    it "converts to Pl" do
      expect(subject.convert_to("Pl").quantity).to eq(7.44082)
    end
  end

  describe "lb/(ft⋅h)" do
    subject { described_class.new(5, "lb/(ft⋅h)") }

    it "converts to Pa⋅s" do
      expect(subject.convert_to("Pa⋅s").quantity).to eq(0.0020668945)
    end

    it "converts to P" do
      expect(subject.convert_to("P").quantity).to eq(0.020668945)
    end

    it "converts to lb/(ft⋅s)" do
      expect(subject.convert_to("lb/(ft⋅s)").quantity).to eq(0.0013888889262205)
    end

    it "converts to (lbf⋅s)/ft²" do
      expect(subject.convert_to("(lbf⋅s)/ft²").quantity).to eq(4.31679882272987e-5)
    end

    it "converts to (lbf⋅s)/in²" do
      expect(subject.convert_to("(lbf⋅s)/in²").quantity).to eq(2.99777715153703e-7)
    end

    it "converts to Pl" do
      expect(subject.convert_to("Pl").quantity).to eq(0.0020668945)
    end
  end

  describe "(lbf⋅s)/ft²" do
    subject { described_class.new(5, "(lbf⋅s)/ft²") }

    it "converts to Pa⋅s" do
      expect(subject.convert_to("Pa⋅s").quantity).to eq(239.4013)
    end

    it "converts to P" do
      expect(subject.convert_to("P").quantity).to eq(2394.013)
    end

    it "converts to lb/(ft⋅s)" do
      expect(subject.convert_to("lb/(ft⋅s)").quantity).to eq(160.870240107945)
    end

    it "converts to lb/(ft⋅h)" do
      expect(subject.convert_to("lb/(ft⋅h)").quantity).to eq(5.79132848822231e+5)
    end

    it "converts to (lbf⋅s)/in²" do
      expect(subject.convert_to("(lbf⋅s)/in²").quantity).to eq(0.0347222244380766)
    end

    it "converts to Pl" do
      expect(subject.convert_to("Pl").quantity).to eq(239.4013)
    end
  end

  describe "(lbf⋅s)/in²" do
    subject { described_class.new(5, "(lbf⋅s)/in²") }

    it "converts to Pa⋅s" do
      expect(subject.convert_to("Pa⋅s").quantity).to eq(34473.785)
    end

    it "converts to P" do
      expect(subject.convert_to("P").quantity).to eq(3.4473785e+5)
    end

    it "converts to lb/(ft⋅s)" do
      expect(subject.convert_to("lb/(ft⋅s)").quantity).to eq(23165.3130972124)
    end

    it "converts to lb/(ft⋅h)" do
      expect(subject.convert_to("lb/(ft⋅h)").quantity).to eq(8.33951249084073e+7)
    end

    it "converts to (lbf⋅s)/ft²" do
      expect(subject.convert_to("(lbf⋅s)/ft²").quantity).to eq(719.999954052046)
    end

    it "converts to Pl" do
      expect(subject.convert_to("Pl").quantity).to eq(34473.785)
    end
  end

  describe "Pl" do
    subject { described_class.new(5, "Pl") }

    it "converts to Pa⋅s" do
      expect(subject.convert_to("Pa⋅s").quantity).to eq(5)
    end

    it "converts to P" do
      expect(subject.convert_to("P").quantity).to eq(50)
    end

    it "converts to lb/(ft⋅s)" do
      expect(subject.convert_to("lb/(ft⋅s)").quantity).to eq(3.35984474829387)
    end

    it "converts to lb/(ft⋅h)" do
      expect(subject.convert_to("lb/(ft⋅h)").quantity).to eq(12095.4407687475)
    end

    it "converts to (lbf⋅s)/ft²" do
      expect(subject.convert_to("(lbf⋅s)/ft²").quantity).to eq(0.104427168941856)
    end

    it "converts to (lbf⋅s)/in²" do
      expect(subject.convert_to("(lbf⋅s)/in²").quantity).to eq(0.000725188719486416)
    end
  end
end
