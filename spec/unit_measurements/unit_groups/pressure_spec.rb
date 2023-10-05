# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/pressure_spec.rb

RSpec.describe UnitMeasurements::Pressure do
  describe "Pa" do
    subject { described_class.new(5, "Pa") }

    it "converts to bar" do
      expect(subject.convert_to("bar").quantity).to eq(0.00005)
    end

    it "converts to Ba" do
      expect(subject.convert_to("Ba").quantity).to eq(50)
    end

    it "converts to pz" do
      expect(subject.convert_to("pz").quantity).to eq(0.005)
    end

    it "converts to at" do
      expect(subject.convert_to("at").quantity).to eq(0.0000509858106488964)
    end

    it "converts to atm" do
      expect(subject.convert_to("atm").quantity).to eq(4.93461633358006e-5)
    end

    it "converts to Torr" do
      expect(subject.convert_to("Torr").quantity).to eq(0.0375030841352085)
    end
  end

  describe "bar" do
    subject { described_class.new(5, "bar") }

    it "converts to Pa" do
      expect(subject.convert_to("Pa").quantity).to eq(5e+5)
    end

    it "converts to Ba" do
      expect(subject.convert_to("Ba").quantity).to eq(5e+6)
    end

    it "converts to pz" do
      expect(subject.convert_to("pz").quantity).to eq(500)
    end

    it "converts to at" do
      expect(subject.convert_to("at").quantity).to eq(5.09858106488964)
    end

    it "converts to atm" do
      expect(subject.convert_to("atm").quantity).to eq(4.93461633358006)
    end

    it "converts to Torr" do
      expect(subject.convert_to("Torr").quantity).to eq(3750.30841352085)
    end
  end

  describe "Ba" do
    subject { described_class.new(5, "Ba") }

    it "converts to Pa" do
      expect(subject.convert_to("Pa").quantity).to eq(0.5)
    end

    it "converts to bar" do
      expect(subject.convert_to("bar").quantity).to eq(5e-6)
    end

    it "converts to pz" do
      expect(subject.convert_to("pz").quantity).to eq(0.0005)
    end

    it "converts to at" do
      expect(subject.convert_to("at").quantity).to eq(5.09858106488964e-6)
    end

    it "converts to atm" do
      expect(subject.convert_to("atm").quantity).to eq(4.93461633358007e-6)
    end

    it "converts to Torr" do
      expect(subject.convert_to("Torr").quantity).to eq(0.00375030841352085)
    end
  end

  describe "pz" do
    subject { described_class.new(5, "pz") }

    it "converts to Pa" do
      expect(subject.convert_to("Pa").quantity).to eq(5000)
    end

    it "converts to bar" do
      expect(subject.convert_to("bar").quantity).to eq(0.05)
    end

    it "converts to Ba" do
      expect(subject.convert_to("Ba").quantity).to eq(5e+4)
    end

    it "converts to at" do
      expect(subject.convert_to("at").quantity).to eq(0.0509858106488964)
    end

    it "converts to atm" do
      expect(subject.convert_to("atm").quantity).to eq(0.0493461633358006)
    end

    it "converts to Torr" do
      expect(subject.convert_to("Torr").quantity).to eq(37.5030841352085)
    end
  end

  describe "at" do
    subject { described_class.new(5, "at") }

    it "converts to Pa" do
      expect(subject.convert_to("Pa").quantity).to eq(4.903325e+5)
    end

    it "converts to bar" do
      expect(subject.convert_to("bar").quantity).to eq(4.903325)
    end

    it "converts to Ba" do
      expect(subject.convert_to("Ba").quantity).to eq(4.903325e+6)
    end

    it "converts to pz" do
      expect(subject.convert_to("pz").quantity).to eq(490.3325)
    end

    it "converts to atm" do
      expect(subject.convert_to("atm").quantity).to eq(4.83920552677029)
    end

    it "converts to Torr" do
      expect(subject.convert_to("Torr").quantity).to eq(3677.79620034542)
    end
  end

  describe "atm" do
    subject { described_class.new(5, "atm") }

    it "converts to Pa" do
      expect(subject.convert_to("Pa").quantity).to eq(5.06625e+5)
    end

    it "converts to bar" do
      expect(subject.convert_to("bar").quantity).to eq(5.06625)
    end

    it "converts to Ba" do
      expect(subject.convert_to("Ba").quantity).to eq(5.06625e+6)
    end

    it "converts to pz" do
      expect(subject.convert_to("pz").quantity).to eq(506.625)
    end

    it "converts to at" do
      expect(subject.convert_to("at").quantity).to eq(5.16613726399943)
    end

    it "converts to Torr" do
      expect(subject.convert_to("Torr").quantity).to eq(3800)
    end
  end

  describe "Torr" do
    subject { described_class.new(5, "Torr") }

    it "converts to Pa" do
      expect(subject.convert_to("Pa").quantity).to eq(666.611842105263)
    end

    it "converts to bar" do
      expect(subject.convert_to("bar").quantity).to eq(0.00666611842105263)
    end

    it "converts to Ba" do
      expect(subject.convert_to("Ba").quantity).to eq(6666.11842105263)
    end

    it "converts to pz" do
      expect(subject.convert_to("pz").quantity).to eq(0.666611842105263)
    end

    it "converts to at" do
      expect(subject.convert_to("at").quantity).to eq(0.0067975490315782)
    end

    it "converts to atm" do
      expect(subject.convert_to("atm").quantity).to eq(0.00657894736842105)
    end
  end
end
