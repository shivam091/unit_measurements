# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/power_spec.rb

RSpec.describe UnitMeasurements::Power do
  describe "W" do
    subject { described_class.new(5, "W") }

    it "converts to p" do
      expect(subject.convert_to("p").quantity).to eq(0.00509858106488964)
    end

    it "converts to hp" do
      expect(subject.convert_to("hp").quantity).to eq(0.00670511044797514)
    end

    it "converts to metric_hp" do
      expect(subject.convert_to("metric_hp").quantity).to eq(0.00679810808651952)
    end

    it "converts to kgf⋅m" do
      expect(subject.convert_to("kgf⋅m").quantity).to eq(0.509858106488964)
    end

    it "converts to cal/s" do
      expect(subject.convert_to("cal/s").quantity).to eq(1.19422948313748)
    end

    it "converts to cal/min" do
      expect(subject.convert_to("cal/min").quantity).to eq(71.6537689882488)
    end

    it "converts to cal/h" do
      expect(subject.convert_to("cal/h").quantity).to eq(4299.22613929493)
    end

    it "converts to l·atm/s" do
      expect(subject.convert_to("l·atm/s").quantity).to eq(0.0493461633358006)
    end

    it "converts to l·atm/min" do
      expect(subject.convert_to("l·atm/min").quantity).to eq(2.96076980014804)
    end

    it "converts to l·atm/h" do
      expect(subject.convert_to("l·atm/h").quantity).to eq(177.646188008882)
    end

    it "converts to atm⋅cm³/s" do
      expect(subject.convert_to("atm⋅cm³/s").quantity).to eq(49.3461633358006)
    end

    it "converts to atm⋅cm³/min" do
      expect(subject.convert_to("atm⋅cm³/min").quantity).to eq(2960.76980014804)
    end

    it "converts to atm⋅cm³/h" do
      expect(subject.convert_to("atm⋅cm³/h").quantity).to eq(1.77646188008882e+5)
    end

    it "converts to ft⋅lbf/s" do
      expect(subject.convert_to("ft⋅lbf/s").quantity).to eq(3.68781074638633)
    end

    it "converts to ft⋅lbf/min" do
      expect(subject.convert_to("ft⋅lbf/min").quantity).to eq(221.26864478318)
    end

    it "converts to ft⋅lbf/h" do
      expect(subject.convert_to("ft⋅lbf/h").quantity).to eq(13276.1186869909)
    end

    it "converts to BTU/s" do
      expect(subject.convert_to("BTU/s").quantity).to eq(0.00473908560156659)
    end

    it "converts to BTU/min" do
      expect(subject.convert_to("BTU/min").quantity).to eq(0.284345136094001)
    end

    it "converts to BTU/h" do
      expect(subject.convert_to("BTU/h").quantity).to eq(17.0607081656398)
    end

    it "converts to erg/s" do
      expect(subject.convert_to("erg/s").quantity).to eq(5e+7)
    end

    it "converts to lusec" do
      expect(subject.convert_to("lusec").quantity).to eq(37503.0752521707)
    end

    it "converts to atm⋅ft³/s" do
      expect(subject.convert_to("atm⋅ft³/s").quantity).to eq(0.00174264331218794)
    end

    it "converts to atm⋅ft³/min" do
      expect(subject.convert_to("atm⋅ft³/min").quantity).to eq(0.104558598731276)
    end

    it "converts to atm⋅ft³/h" do
      expect(subject.convert_to("atm⋅ft³/h").quantity).to eq(6.27351590548899)
    end

    it "converts to Pₚ" do
      expect(subject.convert_to("Pₚ").quantity).to eq(1.37805583882259e-52)
    end
  end
end
