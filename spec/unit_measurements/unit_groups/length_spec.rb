# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/length_spec.rb

RSpec.describe UnitMeasurements::Length do
  describe "m" do
    subject { described_class.new(5, "m") }

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(5e+10)
    end

    it "converts to h" do
      expect(subject.convert_to("h").quantity).to eq(49.2125984251969)
    end

    it "converts to μ" do
      expect(subject.convert_to("μ").quantity).to eq(5e+6)
    end

    it "converts to U" do
      expect(subject.convert_to("U").quantity).to eq(112.485939257593)
    end

    it "converts to S" do
      expect(subject.convert_to("S").quantity).to eq(5e-12)
    end

    it "converts to z" do
      expect(subject.convert_to("z").quantity).to eq(3.83796716695848e-26)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(196.850393700787)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(16.4041994750656)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(5.46806649168854)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.00310685596118667)
    end

    it "converts to qr" do
      expect(subject.convert_to("qr").quantity).to eq(21.8722659667542)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(0.248548476894934)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(1.96850393700787e+5)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(3.34229356113422e-11)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(1.62038964472218e-16)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(0.000899928005759539)
    end

    it "converts to rd" do
      expect(subject.convert_to("rd").quantity).to eq(0.994193907579734)
    end

    it "converts to ls" do
      expect(subject.convert_to("ls").quantity).to eq(1.66782047599076e-8)
    end

    it "converts to lh" do
      expect(subject.convert_to("lh").quantity).to eq(4.63283465552989e-12)
    end

    it "converts to ld" do
      expect(subject.convert_to("ld").quantity).to eq(1.93034777313745e-13)
    end

    it "converts to lw" do
      expect(subject.convert_to("lw").quantity).to eq(2.75763967591065e-14)
    end

    it "converts to lm" do
      expect(subject.convert_to("lm").quantity).to eq(6.43449257712485e-15)
    end

    it "converts to ly" do
      expect(subject.convert_to("ly").quantity).to eq(5.28500417012308e-16)
    end

    it "converts to cb" do
      expect(subject.convert_to("cb").quantity).to eq(0.0269805912418842)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(2.73403324584427)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(0.0248548476894934)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(0.00269978401727862)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(24.8548476894934)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(0.00103561865372889)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(16.4041666666667)
    end

    it "converts to lmin" do
      expect(subject.convert_to("lmin").quantity).to eq(2.77970079331793e-10)
    end

    it "converts to b.c." do
      expect(subject.convert_to("b.c.").quantity).to eq(590.551181102362)
    end

    it "converts to cb (M)" do
      expect(subject.convert_to("cb (M)").quantity).to eq(0.0269978401727862)
    end

    it "converts to cb (US)" do
      expect(subject.convert_to("cb (US)").quantity).to eq(0.0227836103820356)
    end

    it "converts to lₚ" do
      expect(subject.convert_to("lₚ").quantity).to eq(3.09357124958623e+35)
    end
  end
end
