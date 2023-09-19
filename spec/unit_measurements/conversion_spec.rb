# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/conversion_spec.rb

RSpec.describe UnitMeasurements::Conversion do
  let(:measurement) { UnitMeasurements::Length.new(2.25567, :m) }

  describe "#to_i" do
    it "converts quantity of the measurement to integer" do
      expect(measurement.to_i.quantity).to eq(2)
    end
  end

  describe "#to_f" do
    it "converts quantity of the measurement to float" do
      expect(measurement.to_f.quantity).to eq(2.25567)
    end
  end

  describe "#to_r" do
    it "converts quantity of the measurement to rational" do
      expect(measurement.to_r.quantity).to eq(Rational("225567/100000"))
    end
  end

  describe "#to_c" do
    it "converts quantity of the measurement to complex" do
      expect(measurement.to_c.quantity).to eq(Complex("2.25567+0i"))
    end
  end

  describe "#to_d" do
    it "converts quantity of the measurement to big decimal" do
      expect(measurement.to_d.quantity).to eq(BigDecimal(2.25567, Float::DIG))
    end
  end
end
