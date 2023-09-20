# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/volume_spec.rb

RSpec.describe UnitMeasurements::Volume do
  describe "l" do
    subject { described_class.new(10, :l) }

    it "converts to m³" do
      expect(subject.convert_to(:m³).quantity).to eq(0.01)
    end

    it "converts to mm³" do
      expect(subject.convert_to(:mm³).quantity).to eq(1e+7)
    end

    it "converts to cm³" do
      expect(subject.convert_to(:cm³).quantity).to eq(10000)
    end

    it "converts to dm³" do
      expect(subject.convert_to(:dm³).quantity).to eq(10)
    end

    it "converts to km³" do
      expect(subject.convert_to(:km³).quantity).to eq(1e-11)
    end

    it "converts to in³" do
      expect(subject.convert_to(:in³).quantity).to eq(610.237440947323)
    end

    it "converts to ft³" do
      expect(subject.convert_to(:ft³).quantity).to eq(0.353146667214886)
    end

    it "converts to yd³" do
      expect(subject.convert_to(:yd³).quantity).to eq(0.0130795061931439)
    end

    it "converts to mi³" do
      expect(subject.convert_to(:mi³).quantity).to eq(2.39912758578928e-12)
    end
  end

  describe "m³" do
    subject { described_class.new(10, :m³) }

    it "converts to l" do
      expect(subject.convert_to(:l).quantity).to eq(1e+4)
    end

    it "converts to mm³" do
      expect(subject.convert_to(:mm³).quantity).to eq(1e+10)
    end

    it "converts to cm³" do
      expect(subject.convert_to(:cm³).quantity).to eq(1e+7)
    end

    it "converts to dm³" do
      expect(subject.convert_to(:dm³).quantity).to eq(1e+4)
    end

    it "converts to km³" do
      expect(subject.convert_to(:km³).quantity).to eq(1e-8)
    end

    it "converts to in³" do
      expect(subject.convert_to(:in³).quantity).to eq(6.10237440947323e+5)
    end

    it "converts to ft³" do
      expect(subject.convert_to(:ft³).quantity).to eq(353.146667214886)
    end

    it "converts to yd³" do
      expect(subject.convert_to(:yd³).quantity).to eq(13.0795061931439)
    end

    it "converts to mi³" do
      expect(subject.convert_to(:mi³).quantity).to eq(2.39912758578928e-9)
    end
  end

  describe "mm³" do
    subject { described_class.new(10, :mm³) }

    it "converts to l" do
      expect(subject.convert_to(:l).quantity).to eq(1e-5)
    end

    it "converts to m³" do
      expect(subject.convert_to(:m³).quantity).to eq(1e-8)
    end

    it "converts to cm³" do
      expect(subject.convert_to(:cm³).quantity).to eq(0.01)
    end

    it "converts to dm³" do
      expect(subject.convert_to(:dm³).quantity).to eq(1e-5)
    end

    it "converts to km³" do
      expect(subject.convert_to(:km³).quantity).to eq(1e-17)
    end

    it "converts to in³" do
      expect(subject.convert_to(:in³).quantity).to eq(0.000610237440947323)
    end

    it "converts to ft³" do
      expect(subject.convert_to(:ft³).quantity).to eq(3.53146667214886e-7)
    end

    it "converts to yd³" do
      expect(subject.convert_to(:yd³).quantity).to eq(1.30795061931439e-8)
    end

    it "converts to mi³" do
      expect(subject.convert_to(:mi³).quantity).to eq(2.39912758578928e-18)
    end
  end

  describe "cm³" do
    subject { described_class.new(10, :cm³) }

    it "converts to l" do
      expect(subject.convert_to(:l).quantity).to eq(0.01)
    end

    it "converts to m³" do
      expect(subject.convert_to(:m³).quantity).to eq(1e-5)
    end

    it "converts to mm³" do
      expect(subject.convert_to(:mm³).quantity).to eq(10000)
    end

    it "converts to dm³" do
      expect(subject.convert_to(:dm³).quantity).to eq(0.01)
    end

    it "converts to km³" do
      expect(subject.convert_to(:km³).quantity).to eq(1e-14)
    end

    it "converts to in³" do
      expect(subject.convert_to(:in³).quantity).to eq(0.610237440947323)
    end

    it "converts to ft³" do
      expect(subject.convert_to(:ft³).quantity).to eq(0.000353146667214886)
    end

    it "converts to yd³" do
      expect(subject.convert_to(:yd³).quantity).to eq(1.30795061931439e-5)
    end

    it "converts to mi³" do
      expect(subject.convert_to(:mi³).quantity).to eq(2.39912758578928e-15)
    end
  end

  describe "dm³" do
    subject { described_class.new(10, :dm³) }

    it "converts to l" do
      expect(subject.convert_to(:l).quantity).to eq(10)
    end

    it "converts to m³" do
      expect(subject.convert_to(:m³).quantity).to eq(0.01)
    end

    it "converts to mm³" do
      expect(subject.convert_to(:mm³).quantity).to eq(1e+7)
    end

    it "converts to cm³" do
      expect(subject.convert_to(:cm³).quantity).to eq(10000)
    end

    it "converts to km³" do
      expect(subject.convert_to(:km³).quantity).to eq(1e-11)
    end

    it "converts to in³" do
      expect(subject.convert_to(:in³).quantity).to eq(610.237440947323)
    end

    it "converts to ft³" do
      expect(subject.convert_to(:ft³).quantity).to eq(0.353146667214886)
    end

    it "converts to yd³" do
      expect(subject.convert_to(:yd³).quantity).to eq(0.0130795061931439)
    end

    it "converts to mi³" do
      expect(subject.convert_to(:mi³).quantity).to eq(2.39912758578928e-12)
    end
  end

  describe "km³" do
    subject { described_class.new(10, :km³) }

    it "converts to l" do
      expect(subject.convert_to(:l).quantity).to eq(1e+13)
    end

    it "converts to m³" do
      expect(subject.convert_to(:m³).quantity).to eq(1e+10)
    end

    it "converts to mm³" do
      expect(subject.convert_to(:mm³).quantity).to eq(1e+19)
    end

    it "converts to cm³" do
      expect(subject.convert_to(:cm³).quantity).to eq(1e+16)
    end

    it "converts to dm³" do
      expect(subject.convert_to(:dm³).quantity).to eq(1e+13)
    end

    it "converts to in³" do
      expect(subject.convert_to(:in³).quantity).to eq(6.10237440947323e+14)
    end

    it "converts to ft³" do
      expect(subject.convert_to(:ft³).quantity).to eq(3.53146667214886e+11)
    end

    it "converts to yd³" do
      expect(subject.convert_to(:yd³).quantity).to eq(1.30795061931439e+10)
    end

    it "converts to mi³" do
      expect(subject.convert_to(:mi³).quantity).to eq(2.39912758578928)
    end
  end

  describe "in³" do
    subject { described_class.new(10, :in³) }

    it "converts to l" do
      expect(subject.convert_to(:l).quantity).to eq(0.16387064)
    end

    it "converts to m³" do
      expect(subject.convert_to(:m³).quantity).to eq(0.00016387064)
    end

    it "converts to mm³" do
      expect(subject.convert_to(:mm³).quantity).to eq(1.6387064e+5)
    end

    it "converts to cm³" do
      expect(subject.convert_to(:cm³).quantity).to eq(163.87064)
    end

    it "converts to dm³" do
      expect(subject.convert_to(:dm³).quantity).to eq(0.16387064)
    end

    it "converts to km³" do
      expect(subject.convert_to(:km³).quantity).to eq(1.6387064e-13)
    end

    it "converts to ft³" do
      expect(subject.convert_to(:ft³).quantity).to eq(0.00578703703703704)
    end

    it "converts to yd³" do
      expect(subject.convert_to(:yd³).quantity).to eq(0.000214334705075446)
    end

    it "converts to mi³" do
      expect(subject.convert_to(:mi³).quantity).to eq(3.93146572924944e-14)
    end
  end

  describe "ft³" do
    subject { described_class.new(10, :ft³) }

    it "converts to l" do
      expect(subject.convert_to(:l).quantity).to eq(283.16846592)
    end

    it "converts to m³" do
      expect(subject.convert_to(:m³).quantity).to eq(0.28316846592)
    end

    it "converts to mm³" do
      expect(subject.convert_to(:mm³).quantity).to eq(2.8316846592e+8)
    end

    it "converts to cm³" do
      expect(subject.convert_to(:cm³).quantity).to eq(2.8316846592e+5)
    end

    it "converts to dm³" do
      expect(subject.convert_to(:dm³).quantity).to eq(283.16846592)
    end

    it "converts to km³" do
      expect(subject.convert_to(:km³).quantity).to eq(2.8316846592e-10)
    end

    it "converts to in³" do
      expect(subject.convert_to(:in³).quantity).to eq(17280)
    end

    it "converts to yd³" do
      expect(subject.convert_to(:yd³).quantity).to eq(0.37037037037037)
    end

    it "converts to mi³" do
      expect(subject.convert_to(:mi³).quantity).to eq(6.79357278014303e-11)
    end
  end

  describe "yd³" do
    subject { described_class.new(10, :yd³) }

    it "converts to l" do
      expect(subject.convert_to(:l).quantity).to eq(7645.54857984)
    end

    it "converts to m³" do
      expect(subject.convert_to(:m³).quantity).to eq(7.64554857984)
    end

    it "converts to mm³" do
      expect(subject.convert_to(:mm³).quantity).to eq(7.64554857984e+9)
    end

    it "converts to cm³" do
      expect(subject.convert_to(:cm³).quantity).to eq(7.64554857984e+6)
    end

    it "converts to dm³" do
      expect(subject.convert_to(:dm³).quantity).to eq(7645.54857984)
    end

    it "converts to km³" do
      expect(subject.convert_to(:km³).quantity).to eq(7.64554857984e-9)
    end

    it "converts to in³" do
      expect(subject.convert_to(:in³).quantity).to eq(466560)
    end

    it "converts to ft³" do
      expect(subject.convert_to(:ft³).quantity).to eq(270)
    end

    it "converts to mi³" do
      expect(subject.convert_to(:mi³).quantity).to eq(1.83426465063862e-9)
    end
  end

  describe "mi³" do
    subject { described_class.new(10, :mi³) }

    it "converts to l" do
      expect(subject.convert_to(:l).quantity).to eq(4.16818182544058e+13)
    end

    it "converts to m³" do
      expect(subject.convert_to(:m³).quantity).to eq(4.16818182544058e+10)
    end

    it "converts to mm³" do
      expect(subject.convert_to(:mm³).quantity).to eq(4.16818182544058e+19)
    end

    it "converts to cm³" do
      expect(subject.convert_to(:cm³).quantity).to eq(4.16818182544058e+16)
    end

    it "converts to dm³" do
      expect(subject.convert_to(:dm³).quantity).to eq(4.16818182544058e+13)
    end

    it "converts to km³" do
      expect(subject.convert_to(:km³).quantity).to eq(41.6818182544058)
    end

    it "converts to in³" do
      expect(subject.convert_to(:in³).quantity).to eq(2.54358061056e+15)
    end

    it "converts to ft³" do
      expect(subject.convert_to(:ft³).quantity).to eq(1.47197952e+12)
    end

    it "converts to yd³" do
      expect(subject.convert_to(:yd³).quantity).to eq(5.451776e+10)
    end
  end
end
