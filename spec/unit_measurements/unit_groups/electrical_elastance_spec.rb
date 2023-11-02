# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/electrical_elastance_spec.rb

RSpec.describe UnitMeasurements::ElectricalElastance do
  describe "D" do
    subject { described_class.new(5, "D") }

    it "converts to V/C" do
      expect(subject.convert_to("V/C").quantity).to eq(5)
    end
  end
end
