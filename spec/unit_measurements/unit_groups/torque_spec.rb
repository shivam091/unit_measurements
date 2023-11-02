# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/torque_spec.rb

RSpec.describe UnitMeasurements::Torque do
  describe "N·m" do
    subject { described_class.new(5, "N·m") }

    it "converts to kgf·m" do
      expect(subject.convert_to("kgf·m").quantity).to eq(0.509858106488964)
    end

    it "converts to dyn·cm" do
      expect(subject.convert_to("dyn·cm").quantity).to eq(5e+7)
    end

    it "converts to lbf⋅in" do
      expect(subject.convert_to("lbf⋅in").quantity).to eq(44.2537289566359)
    end

    it "converts to lbf⋅ft" do
      expect(subject.convert_to("lbf⋅ft").quantity).to eq(3.68781074638633)
    end

    it "converts to pdl⋅ft" do
      expect(subject.convert_to("pdl⋅ft").quantity).to eq(118.65180202116)
    end

    it "converts to ozf·in" do
      expect(subject.convert_to("ozf·in").quantity).to eq(708.059845218118)
    end
  end
end
