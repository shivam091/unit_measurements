# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/luminance_spec.rb

RSpec.describe UnitMeasurements::Luminance do
  describe "cd/m²" do
    subject { described_class.new(2, "cd/m²") }

    it "converts to cd/in²" do
      expect(subject.convert_to("cd/in²").quantity).to eq(0.00129032000000516)
    end

    it "converts to cd/ft²" do
      expect(subject.convert_to("cd/ft²").quantity).to eq(0.185806079994989)
    end

    it "converts to fL" do
      expect(subject.convert_to("fL").quantity).to eq(0.583727015904576)
    end

    it "converts to L" do
      expect(subject.convert_to("L").quantity).to eq(0.000628318530717959)
    end

    it "converts to sb" do
      expect(subject.convert_to("sb").quantity).to eq(0.0002)
    end
  end

  describe "cd/in²" do
    subject { described_class.new(2, "cd/in²") }

    it "converts to cd/m²" do
      expect(subject.convert_to("cd/m²").quantity).to eq(3100.0062)
    end

    it "converts to cd/ft²" do
      expect(subject.convert_to("cd/ft²").quantity).to eq(287.999999991081)
    end

    it "converts to fL" do
      expect(subject.convert_to("fL").quantity).to eq(904.778684205841)
    end

    it "converts to L" do
      expect(subject.convert_to("L").quantity).to eq(0.973895670400281)
    end

    it "converts to sb" do
      expect(subject.convert_to("sb").quantity).to eq(0.31000062)
    end
  end

  describe "cd/ft²" do
    subject { described_class.new(2, "cd/ft²") }

    it "converts to cd/m²" do
      expect(subject.convert_to("cd/m²").quantity).to eq(21.527820834)
    end

    it "converts to cd/in²" do
      expect(subject.convert_to("cd/in²").quantity).to eq(0.013888888889319)
    end

    it "converts to fL" do
      expect(subject.convert_to("fL").quantity).to eq(6.28318530717959)
    end

    it "converts to L" do
      expect(subject.convert_to("L").quantity).to eq(0.00676316437798917)
    end

    it "converts to sb" do
      expect(subject.convert_to("sb").quantity).to eq(0.0021527820834)
    end
  end

  describe "fL" do
    subject { described_class.new(2, "fL") }

    it "converts to cd/m²" do
      expect(subject.convert_to("cd/m²").quantity).to eq(6.85251819945558)
    end

    it "converts to cd/in²" do
      expect(subject.convert_to("cd/in²").quantity).to eq(0.00442097064157844)
    end

    it "converts to cd/ft²" do
      expect(subject.convert_to("cd/ft²").quantity).to eq(0.636619772367581)
    end

    it "converts to L" do
      expect(subject.convert_to("L").quantity).to eq(0.0021527820834)
    end

    it "converts to sb" do
      expect(subject.convert_to("sb").quantity).to eq(0.000685251819945558)
    end
  end

  describe "L" do
    subject { described_class.new(2, "L") }

    it "converts to cd/m²" do
      expect(subject.convert_to("cd/m²").quantity).to eq(6366.19772367581)
    end

    it "converts to cd/in²" do
      expect(subject.convert_to("cd/in²").quantity).to eq(4.10721612342312)
    end

    it "converts to cd/ft²" do
      expect(subject.convert_to("cd/ft²").quantity).to eq(591.439121754613)
    end

    it "converts to fL" do
      expect(subject.convert_to("fL").quantity).to eq(1858.06079994989)
    end

    it "converts to sb" do
      expect(subject.convert_to("sb").quantity).to eq(0.636619772367581)
    end
  end

  describe "sb" do
    subject { described_class.new(2, "sb") }

    it "converts to cd/m²" do
      expect(subject.convert_to("cd/m²").quantity).to eq(20000)
    end

    it "converts to cd/in²" do
      expect(subject.convert_to("cd/in²").quantity).to eq(12.9032000000516)
    end

    it "converts to cd/ft²" do
      expect(subject.convert_to("cd/ft²").quantity).to eq(1858.06079994989)
    end

    it "converts to fL" do
      expect(subject.convert_to("fL").quantity).to eq(5837.27015904576)
    end

    it "converts to L" do
      expect(subject.convert_to("L").quantity).to eq(6.28318530717959)
    end
  end
end
