# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/area_spec.rb

RSpec.describe UnitMeasurements::Area do
  describe "m²" do
    subject { described_class.new(2, :m²) }

    it "converts to km²" do
      expect(subject.convert_to(:km²).quantity).to eq(2e-6)
    end

    it "converts to in²" do
      expect(subject.convert_to(:in²).quantity).to eq(3100.0062000124)
    end

    it "converts to ft²" do
      expect(subject.convert_to(:ft²).quantity).to eq(21.5278208334194)
    end

    it "converts to yd²" do
      expect(subject.convert_to(:yd²).quantity).to eq(2.39198009260216)
    end

    it "converts to mi²" do
      expect(subject.convert_to(:mi²).quantity).to eq(7.72204317084892e-7)
    end
  end

  describe "km²" do
    subject { described_class.new(2, :km²) }

    it "converts to m²" do
      expect(subject.convert_to(:m²).quantity).to eq(2e+6)
    end

    it "converts to in²" do
      expect(subject.convert_to(:in²).quantity).to eq(3.1000062000124e+9)
    end

    it "converts to ft²" do
      expect(subject.convert_to(:ft²).quantity).to eq(2.15278208334194e+7)
    end

    it "converts to yd²" do
      expect(subject.convert_to(:yd²).quantity).to eq(2.39198009260216e+6)
    end

    it "converts to mi²" do
      expect(subject.convert_to(:mi²).quantity).to eq(0.772204317084892)
    end
  end

  describe "in²" do
    subject { described_class.new(2, :in²) }

    it "converts to m²" do
      expect(subject.convert_to(:m²).quantity).to eq(0.00129032)
    end

    it "converts to km²" do
      expect(subject.convert_to(:km²).quantity).to eq(1.29032e-9)
    end

    it "converts to ft²" do
      expect(subject.convert_to(:ft²).quantity).to eq(0.0138888888888889)
    end

    it "converts to yd²" do
      expect(subject.convert_to(:yd²).quantity).to eq(0.00154320987654321)
    end

    it "converts to mi²" do
      expect(subject.convert_to(:mi²).quantity).to eq(4.98195337210489e-10)
    end
  end

  describe "ft²" do
    subject { described_class.new(2, :ft²) }

    it "converts to m²" do
      expect(subject.convert_to(:m²).quantity).to eq(0.18580608)
    end

    it "converts to km²" do
      expect(subject.convert_to(:km²).quantity).to eq(1.8580608e-7)
    end

    it "converts to in²" do
      expect(subject.convert_to(:in²).quantity).to eq(288)
    end

    it "converts to yd²" do
      expect(subject.convert_to(:yd²).quantity).to eq(0.222222222222222)
    end

    it "converts to mi²" do
      expect(subject.convert_to(:mi²).quantity).to eq(7.17401285583104e-8)
    end
  end

  describe "yd²" do
    subject { described_class.new(2, :yd²) }

    it "converts to m²" do
      expect(subject.convert_to(:m²).quantity).to eq(1.67225472)
    end

    it "converts to km²" do
      expect(subject.convert_to(:km²).quantity).to eq(1.67225472e-6)
    end

    it "converts to in²" do
      expect(subject.convert_to(:in²).quantity).to eq(2592)
    end

    it "converts to ft²" do
      expect(subject.convert_to(:ft²).quantity).to eq(18)
    end

    it "converts to mi²" do
      expect(subject.convert_to(:mi²).quantity).to eq(6.45661157024793e-7)
    end
  end

  describe "mi²" do
    subject { described_class.new(2, :mi²) }

    it "converts to km²" do
      expect(subject.convert_to(:km²).quantity).to eq(5.179976220672)
    end

    it "converts to in²" do
      expect(subject.convert_to(:in²).quantity).to eq(8.0289792e+9)
    end

    it "converts to ft²" do
      expect(subject.convert_to(:ft²).quantity).to eq(5.57568e+7)
    end

    it "converts to yd²" do
      expect(subject.convert_to(:yd²).quantity).to eq(6.1952e+6)
    end
  end
end
