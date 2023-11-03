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
end
