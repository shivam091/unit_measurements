# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/luminance_spec.rb

RSpec.describe UnitMeasurements::Luminance do
  describe "cd/m²" do
    subject { described_class.new(5, "cd/m²") }

    it "converts to L" do
      expect(subject.convert_to("L").quantity).to eq(0.0015707963267949)
    end

    it "converts to fL" do
      expect(subject.convert_to("fL").quantity).to eq(1.45931753976144)
    end

    it "converts to sb" do
      expect(subject.convert_to("sb").quantity).to eq(0.0005)
    end

    it "converts to cd/in²" do
      expect(subject.convert_to("cd/in²").quantity).to eq(0.0032258000000129)
    end

    it "converts to cd/ft²" do
      expect(subject.convert_to("cd/ft²").quantity).to eq(0.464515199987473)
    end
  end
end
