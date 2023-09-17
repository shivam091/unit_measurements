# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/arithmetic_spec.rb

RSpec.describe UnitMeasurements::Arithmetic do
  subject { UnitMeasurements::Length }
  let(:m) { subject.unit_for!(:m) }
  let(:cm) { subject.unit_for!(:cm) }

  describe "#+" do
    it "must add numbers" do
      measurement = subject.new(3.5, :m) + 2
      expect(measurement.quantity).to eq(5.5)
      expect(measurement.unit).to eq(m)
    end

    it "must add similar units" do
      measurement = (subject.new(3.5, :m) + subject.new(2, :m))
      expect(measurement.quantity).to eq(5.5)
      expect(measurement.unit).to eq(m)
    end

    it "must add unsimilar units" do
      measurement = (subject.new(3.5, :cm) + subject.new(2, :m))
      expect(measurement.quantity).to eq(203.5)
      expect(measurement.unit).to eq(cm)
    end
  end

  describe "#-" do
    it "must subtract numbers" do
      measurement = (subject.new(3.5, :m) - 2)
      expect(measurement.quantity).to eq(1.5)
      expect(measurement.unit).to eq(m)
    end

    it "must subtract unsimilar units" do
      measurement = (subject.new(3.5, :m) - subject.new(2, :m))
      expect(measurement.quantity).to eq(1.5)
      expect(measurement.unit).to eq(m)
    end

    it "must subtract similar units" do
      measurement = (subject.new(3.5, :m) - subject.new(2, :cm))
      expect(measurement.quantity).to eq(3.48)
      expect(measurement.unit).to eq(m)
    end
  end

  describe "#*" do
    it "must multiply by numbers" do
      measurement = (subject.new(3.5, :m) * 2)
      expect(measurement.quantity).to eq(7)
      expect(measurement.unit).to eq(m)
    end

    it "must multiply by similar units" do
      measurement = (subject.new(3.5, :m) * subject.new(2, :m))
      expect(measurement.quantity).to eq(7)
      expect(measurement.unit).to eq(m)
    end

    it "must multiply by unsimilar units" do
      measurement = (subject.new(3.5, :m) * subject.new(2, :cm))
      expect(measurement.quantity).to eq(0.07)
      expect(measurement.unit).to eq(m)
    end
  end

  describe "#/" do
    it "must divide by numbers" do
      measurement = (subject.new(4, :m) / 2)
      expect(measurement.quantity).to eq(2)
      expect(measurement.unit).to eq(m)
    end

    it "must divide by similar units" do
      measurement = (subject.new(4, :m) / subject.new(2, :m))
      expect(measurement.quantity).to eq(2)
      expect(measurement.unit).to eq(m)
    end

    it "must divide by unsimilar units" do
      measurement = (subject.new(36, :cm) / subject.new(2, :m))
      expect(measurement.quantity).to eq(0.18)
      expect(measurement.unit).to eq(cm)
    end
  end

  describe "#coerce" do
    let(:meter) { subject.new(1, :m) }

    it "must coerce numbers" do
      expect((meter * 5).quantity).to eq(5)
    end

    it "must coerce measurements" do
      expect((meter * subject.new(1, :cm)).quantity).to eq(0.01)
    end

    it "should raise an error for other than numbers and measurement instance" do
      expect { meter * "foo" }.to raise_error(TypeError)
    end
  end
end
