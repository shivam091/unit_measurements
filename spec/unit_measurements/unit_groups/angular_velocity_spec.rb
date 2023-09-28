# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/angular_velocity_spec.rb

RSpec.describe UnitMeasurements::AngularVelocity do
  describe "rad/s" do
    subject { described_class.new(2, "rad/s") }

    it "converts to rad/min" do
      expect(subject.convert_to("rad/min").quantity).to eq(120)
    end

    it "converts to rad/h" do
      expect(subject.convert_to("rad/h").quantity).to eq(7200)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(114.591559026165)
    end

    it "converts to deg/min" do
      expect(subject.convert_to("deg/min").quantity).to eq(6875.49354156988)
    end

    it "converts to deg/h" do
      expect(subject.convert_to("deg/h").quantity).to eq(412529.612494193)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.318309886183791)
    end

    it "converts to rev/min" do
      expect(subject.convert_to("rev/min").quantity).to eq(19.0985931710274)
    end

    it "converts to rev/h" do
      expect(subject.convert_to("rev/h").quantity).to eq(1145.91559026165)
    end

    it "converts to gon/s" do
      expect(subject.convert_to("gon/s").quantity).to eq(127.323954473516)
    end

    it "converts to gon/min" do
      expect(subject.convert_to("gon/min").quantity).to eq(7639.43726841098)
    end

    it "converts to gon/h" do
      expect(subject.convert_to("gon/h").quantity).to eq(458366.236104659)
    end
  end

  describe "rad/min" do
    subject { described_class.new(2, "rad/min") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(0.333333333333333e-1)
    end

    it "converts to rad/h" do
      expect(subject.convert_to("rad/h").quantity).to eq(0.12e3)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(0.190985931710274e1)
    end

    it "converts to deg/min" do
      expect(subject.convert_to("deg/min").quantity).to eq(0.114591559026165e3)
    end

    it "converts to deg/h" do
      expect(subject.convert_to("deg/h").quantity).to eq(0.687549354156988e4)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.530516476972984e-2)
    end

    it "converts to rev/min" do
      expect(subject.convert_to("rev/min").quantity).to eq(0.318309886183791e0)
    end

    it "converts to rev/h" do
      expect(subject.convert_to("rev/h").quantity).to eq(0.190985931710274e2)
    end

    it "converts to gon/s" do
      expect(subject.convert_to("gon/s").quantity).to eq(0.212206590789194e1)
    end

    it "converts to gon/min" do
      expect(subject.convert_to("gon/min").quantity).to eq(0.127323954473516e3)
    end

    it "converts to gon/h" do
      expect(subject.convert_to("gon/h").quantity).to eq(0.763943726841098e4)
    end
  end

  describe "rad/h" do
    subject { described_class.new(2, "rad/h") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(0.555555555555556e-3)
    end

    it "converts to rad/min" do
      expect(subject.convert_to("rad/min").quantity).to eq(0.333333333333333e-1)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(0.318309886183791e-1)
    end

    it "converts to deg/min" do
      expect(subject.convert_to("deg/min").quantity).to eq(0.190985931710274e1)
    end

    it "converts to deg/h" do
      expect(subject.convert_to("deg/h").quantity).to eq(0.114591559026165e3)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.884194128288307e-4)
    end

    it "converts to rev/min" do
      expect(subject.convert_to("rev/min").quantity).to eq(0.530516476972985e-2)
    end

    it "converts to rev/h" do
      expect(subject.convert_to("rev/h").quantity).to eq(0.318309886183791e0)
    end

    it "converts to gon/s" do
      expect(subject.convert_to("gon/s").quantity).to eq(0.353677651315323e-1)
    end

    it "converts to gon/min" do
      expect(subject.convert_to("gon/min").quantity).to eq(0.212206590789194e1)
    end

    it "converts to gon/h" do
      expect(subject.convert_to("gon/h").quantity).to eq(0.127323954473516e3)
    end
  end

  describe "deg/s" do
    subject { described_class.new(2, "deg/s") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(0.349065850398866e-1)
    end

    it "converts to rad/min" do
      expect(subject.convert_to("rad/min").quantity).to eq(0.20943951023932e1)
    end

    it "converts to rad/h" do
      expect(subject.convert_to("rad/h").quantity).to eq(0.125663706143592e3)
    end

    it "converts to deg/min" do
      expect(subject.convert_to("deg/min").quantity).to eq(0.12e3)
    end

    it "converts to deg/h" do
      expect(subject.convert_to("deg/h").quantity).to eq(0.72e4)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.555555555555556e-2)
    end

    it "converts to rev/min" do
      expect(subject.convert_to("rev/min").quantity).to eq(0.333333333333333e0)
    end

    it "converts to rev/h" do
      expect(subject.convert_to("rev/h").quantity).to eq(0.2e2)
    end

    it "converts to gon/s" do
      expect(subject.convert_to("gon/s").quantity).to eq(0.222222222222222e1)
    end

    it "converts to gon/min" do
      expect(subject.convert_to("gon/min").quantity).to eq(0.133333333333333e3)
    end

    it "converts to gon/h" do
      expect(subject.convert_to("gon/h").quantity).to eq(0.8e4)
    end
  end

  describe "deg/min" do
    subject { described_class.new(2, "deg/min") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(0.581776417331443e-3)
    end

    it "converts to rad/min" do
      expect(subject.convert_to("rad/min").quantity).to eq(0.349065850398866e-1)
    end

    it "converts to rad/h" do
      expect(subject.convert_to("rad/h").quantity).to eq(0.20943951023932e1)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(0.333333333333333e-1)
    end

    it "converts to deg/h" do
      expect(subject.convert_to("deg/h").quantity).to eq(0.12e3)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.925925925925926e-4)
    end

    it "converts to rev/min" do
      expect(subject.convert_to("rev/min").quantity).to eq(0.555555555555556e-2)
    end

    it "converts to rev/h" do
      expect(subject.convert_to("rev/h").quantity).to eq(0.333333333333333e0)
    end

    it "converts to gon/s" do
      expect(subject.convert_to("gon/s").quantity).to eq(0.37037037037037e-1)
    end

    it "converts to gon/min" do
      expect(subject.convert_to("gon/min").quantity).to eq(0.222222222222222e1)
    end

    it "converts to gon/h" do
      expect(subject.convert_to("gon/h").quantity).to eq(0.133333333333333e3)
    end
  end

  describe "deg/h" do
    subject { described_class.new(2, "deg/h") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(0.969627362219072e-5)
    end

    it "converts to rad/min" do
      expect(subject.convert_to("rad/min").quantity).to eq(0.581776417331443e-3)
    end

    it "converts to rad/h" do
      expect(subject.convert_to("rad/h").quantity).to eq(0.349065850398866e-1)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(0.555555555555556e-3)
    end

    it "converts to deg/min" do
      expect(subject.convert_to("deg/min").quantity).to eq(0.333333333333333e-1)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.154320987654321e-5)
    end

    it "converts to rev/min" do
      expect(subject.convert_to("rev/min").quantity).to eq(0.925925925925926e-4)
    end

    it "converts to rev/h" do
      expect(subject.convert_to("rev/h").quantity).to eq(0.555555555555556e-2)
    end

    it "converts to gon/s" do
      expect(subject.convert_to("gon/s").quantity).to eq(0.617283950617284e-3)
    end

    it "converts to gon/min" do
      expect(subject.convert_to("gon/min").quantity).to eq(0.37037037037037e-1)
    end

    it "converts to gon/h" do
      expect(subject.convert_to("gon/h").quantity).to eq(0.222222222222222e1)
    end
  end

  describe "rev/s" do
    subject { described_class.new(2, "rev/s") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(0.125663706143592e2)
    end

    it "converts to rad/min" do
      expect(subject.convert_to("rad/min").quantity).to eq(0.75398223686155e3)
    end

    it "converts to rad/h" do
      expect(subject.convert_to("rad/h").quantity).to eq(0.45238934211693e5)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(0.72e3)
    end

    it "converts to deg/min" do
      expect(subject.convert_to("deg/min").quantity).to eq(0.432e5)
    end

    it "converts to deg/h" do
      expect(subject.convert_to("deg/h").quantity).to eq(0.2592e7)
    end

    it "converts to rev/min" do
      expect(subject.convert_to("rev/min").quantity).to eq(0.12e3)
    end

    it "converts to rev/h" do
      expect(subject.convert_to("rev/h").quantity).to eq(0.72e4)
    end

    it "converts to gon/s" do
      expect(subject.convert_to("gon/s").quantity).to eq(0.8e3)
    end

    it "converts to gon/min" do
      expect(subject.convert_to("gon/min").quantity).to eq(0.48e5)
    end

    it "converts to gon/h" do
      expect(subject.convert_to("gon/h").quantity).to eq(0.288e7)
    end
  end

  describe "rev/min" do
    subject { described_class.new(2, "rev/min") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(0.20943951023932e0)
    end

    it "converts to rad/min" do
      expect(subject.convert_to("rad/min").quantity).to eq(0.125663706143592e2)
    end

    it "converts to rad/h" do
      expect(subject.convert_to("rad/h").quantity).to eq(0.75398223686155e3)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(0.12e2)
    end

    it "converts to deg/min" do
      expect(subject.convert_to("deg/min").quantity).to eq(0.72e3)
    end

    it "converts to deg/h" do
      expect(subject.convert_to("deg/h").quantity).to eq(0.432e5)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.333333333333333e-1)
    end

    it "converts to rev/h" do
      expect(subject.convert_to("rev/h").quantity).to eq(0.12e3)
    end

    it "converts to gon/s" do
      expect(subject.convert_to("gon/s").quantity).to eq(0.133333333333333e2)
    end

    it "converts to gon/min" do
      expect(subject.convert_to("gon/min").quantity).to eq(0.8e3)
    end

    it "converts to gon/h" do
      expect(subject.convert_to("gon/h").quantity).to eq(0.48e5)
    end
  end

  describe "rev/h" do
    subject { described_class.new(2, "rev/h") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(0.349065850398866e-2)
    end

    it "converts to rad/min" do
      expect(subject.convert_to("rad/min").quantity).to eq(0.20943951023932e0)
    end

    it "converts to rad/h" do
      expect(subject.convert_to("rad/h").quantity).to eq(0.125663706143592e2)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(0.2e0)
    end

    it "converts to deg/min" do
      expect(subject.convert_to("deg/min").quantity).to eq(0.12e2)
    end

    it "converts to deg/h" do
      expect(subject.convert_to("deg/h").quantity).to eq(0.72e3)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.555555555555556e-3)
    end

    it "converts to rev/min" do
      expect(subject.convert_to("rev/min").quantity).to eq(0.333333333333333e-1)
    end

    it "converts to gon/s" do
      expect(subject.convert_to("gon/s").quantity).to eq(0.222222222222222e0)
    end

    it "converts to gon/min" do
      expect(subject.convert_to("gon/min").quantity).to eq(0.133333333333333e2)
    end

    it "converts to gon/h" do
      expect(subject.convert_to("gon/h").quantity).to eq(0.8e3)
    end
  end

  describe "gon/s" do
    subject { described_class.new(2, "gon/s") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(0.314159265358979e-1)
    end

    it "converts to rad/min" do
      expect(subject.convert_to("rad/min").quantity).to eq(0.188495559215388e1)
    end

    it "converts to rad/h" do
      expect(subject.convert_to("rad/h").quantity).to eq(0.113097335529233e3)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(0.18e1)
    end

    it "converts to deg/min" do
      expect(subject.convert_to("deg/min").quantity).to eq(0.108e3)
    end

    it "converts to deg/h" do
      expect(subject.convert_to("deg/h").quantity).to eq(0.648e4)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.5e-2)
    end

    it "converts to rev/min" do
      expect(subject.convert_to("rev/min").quantity).to eq(0.3e0)
    end

    it "converts to rev/h" do
      expect(subject.convert_to("rev/h").quantity).to eq(0.18e2)
    end

    it "converts to gon/min" do
      expect(subject.convert_to("gon/min").quantity).to eq(0.12e3)
    end

    it "converts to gon/h" do
      expect(subject.convert_to("gon/h").quantity).to eq(0.72e4)
    end
  end

  describe "gon/min" do
    subject { described_class.new(2, "gon/min") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(0.523598775598299e-3)
    end

    it "converts to rad/min" do
      expect(subject.convert_to("rad/min").quantity).to eq(0.314159265358979e-1)
    end

    it "converts to rad/h" do
      expect(subject.convert_to("rad/h").quantity).to eq(0.188495559215388e1)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(0.3e-1)
    end

    it "converts to deg/min" do
      expect(subject.convert_to("deg/min").quantity).to eq(0.18e1)
    end

    it "converts to deg/h" do
      expect(subject.convert_to("deg/h").quantity).to eq(0.108e3)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.833333333333333e-4)
    end

    it "converts to rev/min" do
      expect(subject.convert_to("rev/min").quantity).to eq(0.5e-2)
    end

    it "converts to rev/h" do
      expect(subject.convert_to("rev/h").quantity).to eq(0.3e0)
    end

    it "converts to gon/s" do
      expect(subject.convert_to("gon/s").quantity).to eq(0.333333333333333e-1)
    end

    it "converts to gon/h" do
      expect(subject.convert_to("gon/h").quantity).to eq(0.12e3)
    end
  end

  describe "gon/h" do
    subject { described_class.new(2, "gon/h") }

    it "converts to rad/s" do
      expect(subject.convert_to("rad/s").quantity).to eq(0.872664625997165e-5)
    end

    it "converts to rad/min" do
      expect(subject.convert_to("rad/min").quantity).to eq(0.523598775598299e-3)
    end

    it "converts to rad/h" do
      expect(subject.convert_to("rad/h").quantity).to eq(0.314159265358979e-1)
    end

    it "converts to deg/s" do
      expect(subject.convert_to("deg/s").quantity).to eq(0.5e-3)
    end

    it "converts to deg/min" do
      expect(subject.convert_to("deg/min").quantity).to eq(0.3e-1)
    end

    it "converts to deg/h" do
      expect(subject.convert_to("deg/h").quantity).to eq(0.18e1)
    end

    it "converts to rev/s" do
      expect(subject.convert_to("rev/s").quantity).to eq(0.138888888888889e-5)
    end

    it "converts to rev/min" do
      expect(subject.convert_to("rev/min").quantity).to eq(0.833333333333333e-4)
    end

    it "converts to rev/h" do
      expect(subject.convert_to("rev/h").quantity).to eq(0.5e-2)
    end

    it "converts to gon/s" do
      expect(subject.convert_to("gon/s").quantity).to eq(0.555555555555556e-3)
    end

    it "converts to gon/min" do
      expect(subject.convert_to("gon/min").quantity).to eq(0.333333333333333e-1)
    end
  end
end
