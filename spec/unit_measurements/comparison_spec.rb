# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/comparison_spec.rb

RSpec.describe UnitMeasurements::Comparison do
  context "when measurements of same unit group are compared with each other" do
    let(:length1) { UnitMeasurements::Length.new(1, :m) }
    let(:length2) { UnitMeasurements::Length.new(1, :cm) }

    describe "#<" do
      it "returns false" do
        expect(length1 < length2).to be_falsy
      end
    end

    describe "#>" do
      it "returns true" do
        expect(length1 > length2).to be_truthy
      end
    end

    describe "#<=" do
      it "returns false" do
        expect(length1 <= length2).to be_falsy
      end
    end

    describe "#>=" do
      it "returns true" do
        expect(length1 >= length2).to be_truthy
      end
    end

    describe "#==" do
      it "returns false" do
        expect(length1 == length2).to be_falsy
      end
    end

    describe "#!=" do
      it "returns true" do
        expect(length1 != length2).to be_truthy
      end
    end
  end
end
