# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/information_entropy_spec.rb

RSpec.describe UnitMeasurements::InformationEntropy do
  describe "nat" do
    subject { described_class.new(1, "nat") }

    it "converts to Sh" do
      expect(subject.convert_to("Sh").quantity).to eq(1.44269504088896)
    end

    it "converts to Hart" do
      expect(subject.convert_to("Hart").quantity).to eq(0.434294481903252)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(1.44269504088896)
    end

    it "converts to B" do
      expect(subject.convert_to("B").quantity).to eq(0.18033688011112)
    end

    it "converts to nybl" do
      expect(subject.convert_to("nybl").quantity).to eq(0.360673760222241)
    end
  end

  describe "Sh" do
    subject { described_class.new(1, "Sh") }

    it "converts to nat" do
      expect(subject.convert_to("nat").quantity).to eq(0.693147180559945)
    end

    it "converts to Hart" do
      expect(subject.convert_to("Hart").quantity).to eq(0.301029995663981)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(1)
    end

    it "converts to B" do
      expect(subject.convert_to("B").quantity).to eq(0.125)
    end

    it "converts to nybl" do
      expect(subject.convert_to("nybl").quantity).to eq(0.25)
    end
  end

  describe "Hart" do
    subject { described_class.new(1, "Hart") }

    it "converts to nat" do
      expect(subject.convert_to("nat").quantity).to eq(2.30258509299405)
    end

    it "converts to Sh" do
      expect(subject.convert_to("Sh").quantity).to eq(3.32192809488736)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(3.32192809488736)
    end

    it "converts to B" do
      expect(subject.convert_to("B").quantity).to eq(0.41524101186092)
    end

    it "converts to nybl" do
      expect(subject.convert_to("nybl").quantity).to eq(0.830482023721841)
    end
  end

  describe "b" do
    subject { described_class.new(1, "b") }

    it "converts to nat" do
      expect(subject.convert_to("nat").quantity).to eq(0.693147180559945)
    end

    it "converts to Sh" do
      expect(subject.convert_to("Sh").quantity).to eq(1)
    end

    it "converts to Hart" do
      expect(subject.convert_to("Hart").quantity).to eq(0.301029995663981)
    end

    it "converts to B" do
      expect(subject.convert_to("B").quantity).to eq(0.125)
    end

    it "converts to nybl" do
      expect(subject.convert_to("nybl").quantity).to eq(0.25)
    end
  end

  describe "B" do
    subject { described_class.new(1, "B") }

    it "converts to nat" do
      expect(subject.convert_to("nat").quantity).to eq(5.54517744447956)
    end

    it "converts to Sh" do
      expect(subject.convert_to("Sh").quantity).to eq(8)
    end

    it "converts to Hart" do
      expect(subject.convert_to("Hart").quantity).to eq(2.40823996531185)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(8)
    end

    it "converts to nybl" do
      expect(subject.convert_to("nybl").quantity).to eq(2)
    end
  end

  describe "nybl" do
    subject { described_class.new(1, "nybl") }

    it "converts to nat" do
      expect(subject.convert_to("nat").quantity).to eq(2.77258872223978)
    end

    it "converts to Sh" do
      expect(subject.convert_to("Sh").quantity).to eq(4)
    end

    it "converts to Hart" do
      expect(subject.convert_to("Hart").quantity).to eq(1.20411998265592)
    end

    it "converts to b" do
      expect(subject.convert_to("b").quantity).to eq(4)
    end

    it "converts to B" do
      expect(subject.convert_to("B").quantity).to eq(0.5)
    end
  end
end
