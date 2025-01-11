# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/mass_flow_rate_spec.rb

RSpec.describe UnitMeasurements::MassFlowRate do
  describe "kg/s" do
    subject { described_class.new(5, "kg/s") }

    it "converts to kg/min" do
      expect(subject.convert_to("kg/min").quantity).to eq(300)
    end

    it "converts to kg/h" do
      expect(subject.convert_to("kg/h").quantity).to eq(18000)
    end

    it "converts to g/s" do
      expect(subject.convert_to("g/s").quantity).to eq(5000)
    end

    it "converts to g/min" do
      expect(subject.convert_to("g/min").quantity).to eq(300000)
    end

    it "converts to g/h" do
      expect(subject.convert_to("g/h").quantity).to eq(18000000)
    end

    it "converts to t/s" do
      expect(subject.convert_to("t/s").quantity).to eq(0.005)
    end

    it "converts to t/min" do
      expect(subject.convert_to("t/min").quantity).to eq(0.3)
    end

    it "converts to t/h" do
      expect(subject.convert_to("t/h").quantity).to eq(18)
    end

    it "converts to lb/s" do
      expect(subject.convert_to("lb/s").quantity).to eq(11.0231131092439)
    end

    it "converts to lb/min" do
      expect(subject.convert_to("lb/min").quantity).to eq(661.386786554633)
    end

    it "converts to lb/h" do
      expect(subject.convert_to("lb/h").quantity).to eq(39683.207193278)
    end

    it "converts to tn/s" do
      expect(subject.convert_to("tn/s").quantity).to eq(0.00551155655462194)
    end

    it "converts to tn/min" do
      expect(subject.convert_to("tn/min").quantity).to eq(0.330693393277316)
    end

    it "converts to tn/h" do
      expect(subject.convert_to("tn/h").quantity).to eq(19.841603596639)
    end

    it "converts to slug/s" do
      expect(subject.convert_to("slug/s").quantity).to eq(0.342608898238305)
    end

    it "converts to slug/min" do
      expect(subject.convert_to("slug/min").quantity).to eq(20.5565338942983)
    end

    it "converts to slug/h" do
      expect(subject.convert_to("slug/h").quantity).to eq(1233.3920336579)
    end

    it "converts to oz/s" do
      expect(subject.convert_to("oz/s").quantity).to eq(176.369809747902)
    end

    it "converts to oz/min" do
      expect(subject.convert_to("oz/min").quantity).to eq(10582.1885848741)
    end

    it "converts to oz/h" do
      expect(subject.convert_to("oz/h").quantity).to eq(634931.315092447)
    end

    it "converts to gr/s" do
      expect(subject.convert_to("gr/s").quantity).to eq(77161.7917647071)
    end

    it "converts to gr/min" do
      expect(subject.convert_to("gr/min").quantity).to eq(4.62970750588243e+6)
    end

    it "converts to gr/h" do
      expect(subject.convert_to("gr/h").quantity).to eq(2.77782450352946e+8)
    end

    it "converts to LT/s" do
      expect(subject.convert_to("LT/s").quantity).to eq(0.0049210326380553)
    end

    it "converts to LT/min" do
      expect(subject.convert_to("LT/min").quantity).to eq(0.295261958283318)
    end

    it "converts to LT/h" do
      expect(subject.convert_to("LT/h").quantity).to eq(17.7157174969991)
    end
  end
end
