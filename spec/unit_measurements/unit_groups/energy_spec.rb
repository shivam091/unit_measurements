# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/energy_spec.rb

RSpec.describe UnitMeasurements::Energy do
  describe "J" do
    subject { described_class.new(2, "J") }

    it "converts to cal" do
      expect(subject.convert_to("cal").quantity).to eq(0.477691793254992)
    end

    it "converts to eV" do
      expect(subject.convert_to("eV").quantity).to eq(1.24830181489215e+19)
    end

    it "converts to erg" do
      expect(subject.convert_to("erg").quantity).to eq(2e+7)
    end

    it "converts to Btu" do
      expect(subject.convert_to("Btu").quantity).to eq(0.00189563424062663)
    end

    it "converts to thm" do
      expect(subject.convert_to("thm").quantity).to eq(1.89563424062663e-8)
    end

    it "converts to quad" do
      expect(subject.convert_to("quad").quantity).to eq(1.89563424062663e-18)
    end

    it "converts to foe" do
      expect(subject.convert_to("foe").quantity).to eq(2e-44)
    end
  end

  describe "cal" do
    subject { described_class.new(2, "cal") }

    it "converts to J" do
      expect(subject.convert_to("J").quantity).to eq(8.3736)
    end

    it "converts to eV" do
      expect(subject.convert_to("eV").quantity).to eq(5.22639003859046e+19)
    end

    it "converts to erg" do
      expect(subject.convert_to("erg").quantity).to eq(8.3736e+7)
    end

    it "converts to Btu" do
      expect(subject.convert_to("Btu").quantity).to eq(0.00793664143865559)
    end

    it "converts to thm" do
      expect(subject.convert_to("thm").quantity).to eq(7.93664143865559e-8)
    end

    it "converts to quad" do
      expect(subject.convert_to("quad").quantity).to eq(7.93664143865559e-18)
    end

    it "converts to foe" do
      expect(subject.convert_to("foe").quantity).to eq(8.3736e-44)
    end
  end

  describe "eV" do
    subject { described_class.new(2, "eV") }

    it "converts to J" do
      expect(subject.convert_to("J").quantity).to eq(3.204353268e-19)
    end

    it "converts to cal" do
      expect(subject.convert_to("cal").quantity).to eq(7.65346629406707e-20)
    end

    it "converts to erg" do
      expect(subject.convert_to("erg").quantity).to eq(3.204353268e-12)
    end

    it "converts to Btu" do
      expect(subject.convert_to("Btu").quantity).to eq(3.03714088694233e-22)
    end

    it "converts to thm" do
      expect(subject.convert_to("thm").quantity).to eq(3.03714088694233e-27)
    end

    it "converts to quad" do
      expect(subject.convert_to("quad").quantity).to eq(3.03714088694233e-37)
    end

    it "converts to foe" do
      expect(subject.convert_to("foe").quantity).to eq(3.204353268e-63)
    end
  end

  describe "erg" do
    subject { described_class.new(2, "erg") }

    it "converts to J" do
      expect(subject.convert_to("J").quantity).to eq(2e-7)
    end

    it "converts to cal" do
      expect(subject.convert_to("cal").quantity).to eq(4.77691793254992e-8)
    end

    it "converts to eV" do
      expect(subject.convert_to("eV").quantity).to eq(1.24830181489215e+12)
    end

    it "converts to Btu" do
      expect(subject.convert_to("Btu").quantity).to eq(1.89563424062663e-10)
    end

    it "converts to thm" do
      expect(subject.convert_to("thm").quantity).to eq(1.89563424062663e-15)
    end

    it "converts to quad" do
      expect(subject.convert_to("quad").quantity).to eq(1.89563424062663e-25)
    end

    it "converts to foe" do
      expect(subject.convert_to("foe").quantity).to eq(2e-51)
    end
  end

  describe "Btu" do
    subject { described_class.new(2, "Btu") }

    it "converts to J" do
      expect(subject.convert_to("J").quantity).to eq(2110.11170524)
    end

    it "converts to cal" do
      expect(subject.convert_to("cal").quantity).to eq(503.991522222222)
    end

    it "converts to eV" do
      expect(subject.convert_to("eV").quantity).to eq(1.31702813563813e+22)
    end

    it "converts to erg" do
      expect(subject.convert_to("erg").quantity).to eq(2.11011170524e+10)
    end

    it "converts to thm" do
      expect(subject.convert_to("thm").quantity).to eq(2e-5)
    end

    it "converts to quad" do
      expect(subject.convert_to("quad").quantity).to eq(2e-15)
    end

    it "converts to foe" do
      expect(subject.convert_to("foe").quantity).to eq(2.11011170524e-41)
    end
  end

  describe "thm" do
    subject { described_class.new(2, "thm") }

    it "converts to J" do
      expect(subject.convert_to("J").quantity).to eq(2.11011170524e+8)
    end

    it "converts to cal" do
      expect(subject.convert_to("cal").quantity).to eq(5.03991522222222e+7)
    end

    it "converts to eV" do
      expect(subject.convert_to("eV").quantity).to eq(1.31702813563813e+27)
    end

    it "converts to erg" do
      expect(subject.convert_to("erg").quantity).to eq(2.11011170524e+15)
    end

    it "converts to Btu" do
      expect(subject.convert_to("Btu").quantity).to eq(2e+5)
    end

    it "converts to quad" do
      expect(subject.convert_to("quad").quantity).to eq(2e-10)
    end

    it "converts to foe" do
      expect(subject.convert_to("foe").quantity).to eq(2.11011170524e-36)
    end
  end

  describe "quad" do
    subject { described_class.new(2, "quad") }

    it "converts to J" do
      expect(subject.convert_to("J").quantity).to eq(2.11011170524e+18)
    end

    it "converts to cal" do
      expect(subject.convert_to("cal").quantity).to eq(5.03991522222222e+17)
    end

    it "converts to eV" do
      expect(subject.convert_to("eV").quantity).to eq(1.31702813563813e+37)
    end

    it "converts to erg" do
      expect(subject.convert_to("erg").quantity).to eq(2.11011170524e+25)
    end

    it "converts to Btu" do
      expect(subject.convert_to("Btu").quantity).to eq(2e+15)
    end

    it "converts to thm" do
      expect(subject.convert_to("thm").quantity).to eq(2e+10)
    end

    it "converts to foe" do
      expect(subject.convert_to("foe").quantity).to eq(2.11011170524e-26)
    end
  end

  describe "foe" do
    subject { described_class.new(2, "foe") }

    it "converts to J" do
      expect(subject.convert_to("J").quantity).to eq(2e+44)
    end

    it "converts to cal" do
      expect(subject.convert_to("cal").quantity).to eq(4.77691793254992e+43)
    end

    it "converts to eV" do
      expect(subject.convert_to("eV").quantity).to eq(1.24830181489215e+63)
    end

    it "converts to erg" do
      expect(subject.convert_to("erg").quantity).to eq(2e+51)
    end

    it "converts to Btu" do
      expect(subject.convert_to("Btu").quantity).to eq(1.89563424062663e+41)
    end

    it "converts to thm" do
      expect(subject.convert_to("thm").quantity).to eq(1.89563424062663e+36)
    end

    it "converts to quad" do
      expect(subject.convert_to("quad").quantity).to eq(1.89563424062663e+26)
    end
  end
end
