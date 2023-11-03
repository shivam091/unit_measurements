# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/power_spec.rb

RSpec.describe UnitMeasurements::Power do
  describe "W" do
    subject { described_class.new(2, "W") }

    it "converts to hp (M)" do
      expect(subject.convert_to("hp (M)").quantity).to eq(0.00271924323460781)
    end

    it "converts to hp" do
      expect(subject.convert_to("hp").quantity).to eq(0.00268204417919006)
    end

    it "converts to erg/s" do
      expect(subject.convert_to("erg/s").quantity).to eq(2e+7)
    end

    it "converts to cal/s" do
      expect(subject.convert_to("cal/s").quantity).to eq(0.477691793254992)
    end
  end
end
