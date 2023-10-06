# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/torque_spec.rb

RSpec.describe UnitMeasurements::Torque do
  describe "N·m" do
    subject { described_class.new(5, "N·m") }

    it "converts to kgf·m" do
      expect(subject.convert_to("kgf·m").quantity).to eq(0.509858106488964)
    end

    it "converts to dyn·cm" do
      expect(subject.convert_to("dyn·cm").quantity).to eq(5e+7)
    end

    it "converts to lbf⋅in" do
      expect(subject.convert_to("lbf⋅in").quantity).to eq(44.2537289566359)
    end

    it "converts to lbf⋅ft" do
      expect(subject.convert_to("lbf⋅ft").quantity).to eq(3.68781074638633)
    end

    it "converts to pdl⋅ft" do
      expect(subject.convert_to("pdl⋅ft").quantity).to eq(118.65180202116)
    end

    it "converts to ozf·in" do
      expect(subject.convert_to("ozf·in").quantity).to eq(708.059845218118)
    end
  end

  describe "kgf·m" do
    subject { described_class.new(5, "kgf·m") }

    it "converts to N·m" do
      expect(subject.convert_to("N·m").quantity).to eq(49.03325)
    end

    it "converts to dyn·cm" do
      expect(subject.convert_to("dyn·cm").quantity).to eq(4.903325e+8)
    end

    it "converts to lbf⋅in" do
      expect(subject.convert_to("lbf⋅in").quantity).to eq(433.980831072594)
    end

    it "converts to lbf⋅ft" do
      expect(subject.convert_to("lbf⋅ft").quantity).to eq(36.1650692560495)
    end

    it "converts to pdl⋅ft" do
      expect(subject.convert_to("pdl⋅ft").quantity).to eq(1163.57669429081)
    end

    it "converts to ozf·in" do
      expect(subject.convert_to("ozf·in").quantity).to eq(6943.69508110826)
    end
  end

  describe "dyn·cm" do
    subject { described_class.new(5, "dyn·cm") }

    it "converts to N·m" do
      expect(subject.convert_to("N·m").quantity).to eq(5e-7)
    end

    it "converts to kgf·m" do
      expect(subject.convert_to("kgf·m").quantity).to eq(5.09858106488964e-8)
    end

    it "converts to lbf⋅in" do
      expect(subject.convert_to("lbf⋅in").quantity).to eq(4.42537289566359e-6)
    end

    it "converts to lbf⋅ft" do
      expect(subject.convert_to("lbf⋅ft").quantity).to eq(3.68781074638633e-7)
    end

    it "converts to pdl⋅ft" do
      expect(subject.convert_to("pdl⋅ft").quantity).to eq(0.000011865180202116)
    end

    it "converts to ozf·in" do
      expect(subject.convert_to("ozf·in").quantity).to eq(0.0000708059845218118)
    end
  end

  describe "lbf⋅in" do
    subject { described_class.new(5, "lbf⋅in") }

    it "converts to N·m" do
      expect(subject.convert_to("N·m").quantity).to eq(0.564924145138084)
    end

    it "converts to kgf·m" do
      expect(subject.convert_to("kgf·m").quantity).to eq(0.05760623099)
    end

    it "converts to dyn·cm" do
      expect(subject.convert_to("dyn·cm").quantity).to eq(5.64924145138083e+6)
    end

    it "converts to lbf⋅ft" do
      expect(subject.convert_to("lbf⋅ft").quantity).to eq(0.416666666666667)
    end

    it "converts to pdl⋅ft" do
      expect(subject.convert_to("pdl⋅ft").quantity).to eq(13.4058535651794)
    end

    it "converts to ozf·in" do
      expect(subject.convert_to("ozf·in").quantity).to eq(80.0000205532898)
    end
  end

  describe "lbf⋅ft" do
    subject { described_class.new(5, "lbf⋅ft") }

    it "converts to N·m" do
      expect(subject.convert_to("N·m").quantity).to eq(6.779089741657)
    end

    it "converts to kgf·m" do
      expect(subject.convert_to("kgf·m").quantity).to eq(0.69127477188)
    end

    it "converts to dyn·cm" do
      expect(subject.convert_to("dyn·cm").quantity).to eq(6.779089741657e+7)
    end

    it "converts to lbf⋅in" do
      expect(subject.convert_to("lbf⋅in").quantity).to eq(60)
    end

    it "converts to pdl⋅ft" do
      expect(subject.convert_to("pdl⋅ft").quantity).to eq(160.870242782152)
    end

    it "converts to ozf·in" do
      expect(subject.convert_to("ozf·in").quantity).to eq(960.000246639477)
    end
  end

  describe "pdl⋅ft" do
    subject { described_class.new(5, "pdl⋅ft") }

    it "converts to N·m" do
      expect(subject.convert_to("N·m").quantity).to eq(0.210700550469024)
    end

    it "converts to kgf·m" do
      expect(subject.convert_to("kgf·m").quantity).to eq(0.0214854767396638)
    end

    it "converts to dyn·cm" do
      expect(subject.convert_to("dyn·cm").quantity).to eq(2.10700550469024e+6)
    end

    it "converts to lbf⋅in" do
      expect(subject.convert_to("lbf⋅in").quantity).to eq(1.86485701029404)
    end

    it "converts to lbf⋅ft" do
      expect(subject.convert_to("lbf⋅ft").quantity).to eq(0.155404750857836)
    end

    it "converts to ozf·in" do
      expect(subject.convert_to("ozf·in").quantity).to eq(29.8377198304939)
    end
  end

  describe "ozf·in" do
    subject { described_class.new(5, "ozf·in") }

    it "converts to N·m" do
      expect(subject.convert_to("N·m").quantity).to eq(0.03530775)
    end

    it "converts to kgf·m" do
      expect(subject.convert_to("kgf·m").quantity).to eq(0.00360038851187714)
    end

    it "converts to dyn·cm" do
      expect(subject.convert_to("dyn·cm").quantity).to eq(3.530775e+5)
    end

    it "converts to lbf⋅in" do
      expect(subject.convert_to("lbf⋅in").quantity).to eq(0.312499919713732)
    end

    it "converts to lbf⋅ft" do
      expect(subject.convert_to("lbf⋅ft").quantity).to eq(0.0260416599761444)
    end

    it "converts to pdl⋅ft" do
      expect(subject.convert_to("pdl⋅ft").quantity).to eq(0.83786563256252)
    end
  end
end
