# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/force_spec.rb

RSpec.describe UnitMeasurements::Force do
  describe "N" do
    subject { described_class.new(2, :N) }

    it "converts to dyn" do
      expect(subject.convert_to(:dyn).quantity).to eq(2e+5)
    end

    it "converts to kgf" do
      expect(subject.convert_to(:kgf).quantity).to eq(0.203943242595586)
    end

    it "converts to ozf" do
      expect(subject.convert_to(:ozf).quantity).to eq(7.19388617919074)
    end

    it "converts to lbf" do
      expect(subject.convert_to(:lbf).quantity).to eq(0.449617886199421)
    end

    it "converts to tf" do
      expect(subject.convert_to(:tf).quantity).to eq(0.000224808943099711)
    end

    it "converts to pdl" do
      expect(subject.convert_to(:pdl).quantity).to eq(14.4660277024198)
    end
  end

  describe "dyn" do
    subject { described_class.new(2, :dyn) }

    it "converts to N" do
      expect(subject.convert_to(:N).quantity).to eq(2e-5)
    end

    it "converts to kgf" do
      expect(subject.convert_to(:kgf).quantity).to eq(2.03943242595586e-6)
    end

    it "converts to ozf" do
      expect(subject.convert_to(:ozf).quantity).to eq(7.19388617919074e-5)
    end

    it "converts to lbf" do
      expect(subject.convert_to(:lbf).quantity).to eq(4.49617886199421e-6)
    end

    it "converts to tf" do
      expect(subject.convert_to(:tf).quantity).to eq(2.2480894309971e-9)
    end

    it "converts to pdl" do
      expect(subject.convert_to(:pdl).quantity).to eq(0.000144660277024198)
    end
  end

  describe "kgf" do
    subject { described_class.new(2, :kgf) }

    it "converts to N" do
      expect(subject.convert_to(:N).quantity).to eq(19.6133)
    end

    it "converts to dyn" do
      expect(subject.convert_to(:dyn).quantity).to eq(1.96133e+6)
    end

    it "converts to ozf" do
      expect(subject.convert_to(:ozf).quantity).to eq(70.5479238991608)
    end

    it "converts to lbf" do
      expect(subject.convert_to(:lbf).quantity).to eq(4.40924524369755)
    end

    it "converts to tf" do
      expect(subject.convert_to(:tf).quantity).to eq(0.00220462262184878)
    end

    it "converts to pdl" do
      expect(subject.convert_to(:pdl).quantity).to eq(141.863270567935)
    end
  end

  describe "ozf" do
    subject { described_class.new(2, :ozf) }

    it "converts to N" do
      expect(subject.convert_to(:N).quantity).to eq(0.556027701907562)
    end

    it "converts to dyn" do
      expect(subject.convert_to(:dyn).quantity).to eq(55602.7701907562)
    end

    it "converts to kgf" do
      expect(subject.convert_to(:kgf).quantity).to eq(0.05669904625)
    end

    it "converts to lbf" do
      expect(subject.convert_to(:lbf).quantity).to eq(0.125)
    end

    it "converts to tf" do
      expect(subject.convert_to(:tf).quantity).to eq(6.25e-5)
    end

    it "converts to pdl" do
      expect(subject.convert_to(:pdl).quantity).to eq(4.02175606955381)
    end
  end

  describe "lbf" do
    subject { described_class.new(2, :lbf) }

    it "converts to N" do
      expect(subject.convert_to(:N).quantity).to eq(8.896443230521)
    end

    it "converts to dyn" do
      expect(subject.convert_to(:dyn).quantity).to eq(8.896443230521e+5)
    end

    it "converts to kgf" do
      expect(subject.convert_to(:kgf).quantity).to eq(0.90718474)
    end

    it "converts to ozf" do
      expect(subject.convert_to(:ozf).quantity).to eq(32)
    end

    it "converts to tf" do
      expect(subject.convert_to(:tf).quantity).to eq(0.001)
    end

    it "converts to pdl" do
      expect(subject.convert_to(:pdl).quantity).to eq(64.3480971128609)
    end
  end

  describe "tf" do
    subject { described_class.new(2, :tf) }

    it "converts to N" do
      expect(subject.convert_to(:N).quantity).to eq(17792.886461042)
    end

    it "converts to dyn" do
      expect(subject.convert_to(:dyn).quantity).to eq(1.7792886461042e+9)
    end

    it "converts to kgf" do
      expect(subject.convert_to(:kgf).quantity).to eq(1814.36948)
    end

    it "converts to ozf" do
      expect(subject.convert_to(:ozf).quantity).to eq(64000)
    end

    it "converts to lbf" do
      expect(subject.convert_to(:lbf).quantity).to eq(4000)
    end

    it "converts to pdl" do
      expect(subject.convert_to(:pdl).quantity).to eq(1.28696194225722e+5)
    end
  end

  describe "pdl" do
    subject { described_class.new(2, :pdl) }

    it "converts to N" do
      expect(subject.convert_to(:N).quantity).to eq(0.276509908752)
    end

    it "converts to dyn" do
      expect(subject.convert_to(:dyn).quantity).to eq(27650.9908752)
    end

    it "converts to kgf" do
      expect(subject.convert_to(:kgf).quantity).to eq(0.0281961637003462)
    end

    it "converts to ozf" do
      expect(subject.convert_to(:ozf).quantity).to eq(0.994590405490152)
    end

    it "converts to lbf" do
      expect(subject.convert_to(:lbf).quantity).to eq(0.0621619003431345)
    end

    it "converts to tf" do
      expect(subject.convert_to(:tf).quantity).to eq(3.10809501715673e-5)
    end
  end
end
