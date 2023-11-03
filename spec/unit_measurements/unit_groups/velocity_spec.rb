# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/velocity_spec.rb

RSpec.describe UnitMeasurements::Velocity do
  describe "m/s" do
    subject { described_class.new(5, "m/s") }

    it "converts to Kn" do
      expect(subject.convert_to("Kn").quantity).to eq(9.7130191365903)
    end

    it "converts to m/min" do
      expect(subject.convert_to("m/min").quantity).to eq(300)
    end

    it "converts to m/h" do
      expect(subject.convert_to("m/h").quantity).to eq(18000)
    end

    it "converts to in/s" do
      expect(subject.convert_to("in/s").quantity).to eq(196.850393700787)
    end

    it "converts to in/min" do
      expect(subject.convert_to("in/min").quantity).to eq(11811.0236220472)
    end

    it "converts to in/h" do
      expect(subject.convert_to("in/h").quantity).to eq(7.08661417322835e+5)
    end

    it "converts to ft/s" do
      expect(subject.convert_to("ft/s").quantity).to eq(16.4041994750656)
    end

    it "converts to ft/min" do
      expect(subject.convert_to("ft/min").quantity).to eq(984.251968503937)
    end

    it "converts to ft/h" do
      expect(subject.convert_to("ft/h").quantity).to eq(59055.1181102362)
    end

    it "converts to mi/s" do
      expect(subject.convert_to("mi/s").quantity).to eq(0.00310685596118667)
    end

    it "converts to mi/min" do
      expect(subject.convert_to("mi/min").quantity).to eq(0.1864113576712)
    end

    it "converts to mi/h" do
      expect(subject.convert_to("mi/h").quantity).to eq(11.184681460272)
    end

    it "converts to fur/ftn" do
      expect(subject.convert_to("fur/ftn").quantity).to eq(30066.1455201443)
    end
  end
end
