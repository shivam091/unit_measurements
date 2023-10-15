# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/length_spec.rb

RSpec.describe UnitMeasurements::Length do
  describe "m" do
    subject { described_class.new(1, "m") }

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(39.3700787401575)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(3.28083989501312)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(1.09361329833771)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.000621371192237334)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(0.0497096953789867)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(39370.0787401575)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(6.68458712226845e-12)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(0.324077928944436e-16)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(0.546806649168854)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(0.00497096953789867)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(0.000539956803455724)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(0.198838781515947)
    end
  end

  describe "in" do
    subject { described_class.new(1, "in") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(0.0254)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(0.0833333333333333)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(0.0277777777777778)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(1.57828282828283e-5)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(0.00126262626262626)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(1000)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(1.69788512905619e-13)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(8.23157939518869e-19)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(0.0138888888888889)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(0.000126262626262626)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(1.37149028077754e-5)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(0.00505050505050505)
    end
  end

  describe "ft" do
    subject { described_class.new(1, "ft") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(0.3048)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(12)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(0.333333333333333)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.000189393939393939)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(0.0151515151515152)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(12000)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(2.03746215486742e-12)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(9.87789527422642e-18)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(0.166666666666667)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(0.00151515151515152)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(0.000164578833693305)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(0.0606060606060606)
    end
  end

  describe "yd" do
    subject { described_class.new(1, "yd") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(0.9144)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(36)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(3)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.000568181818181818)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(0.0454545454545455)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(36000)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(6.11238646460227e-12)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(2.96336858226793e-17)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(0.5)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(0.00454545454545455)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(0.000493736501079914)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(0.181818181818182)
    end
  end

  describe "mi" do
    subject { described_class.new(1, "mi") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(1609.344)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(63360)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(5280)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(1760)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(80)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(63360000)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(1.07578001777e-8)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(5.21552870479155e-14)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(880)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(8)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(0.868976241900648)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(320)
    end
  end

  describe "ch" do
    subject { described_class.new(1, "ch") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(20.1168)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(792)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(66)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(22)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.0125)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(792000)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(1.3447250222125e-10)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(6.51941088098944e-16)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(11)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(0.1)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(0.0108622030237581)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(4)
    end
  end

  describe "th" do
    subject { described_class.new(1, "th") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(2.54e-5)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(0.001)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(8.33333333333333e-5)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(2.77777777777778e-5)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(1.57828282828283e-8)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(1.26262626262626e-6)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(1.69788512905619e-16)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(8.23157939518869e-22)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(1.38888888888889e-5)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(1.26262626262626e-7)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(1.37149028077754e-8)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(5.05050505050505e-6)
    end
  end

  describe "au" do
    subject { described_class.new(1, "au") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(1.495978707e+11)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(5.8896799488189e+12)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(4.90806662401575e+11)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(1.63602220800525e+11)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(9.29558072730255e+7)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(7.43646458184204e+9)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(5.8896799488189e+15)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(4.84813681109536e-6)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(8.18011104002625e+10)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(7.43646458184204e+8)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(8.07763880669546e+7)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(2.97458583273682e+10)
    end
  end

  describe "pc" do
    subject { described_class.new(1, "pc") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(3.08567758149137e+16)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(1.21483369350054e+18)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(1.01236141125045e+17)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(3.3745380375015e+16)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(1.9173511576713e+13)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(1.53388092613704e+15)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(1.21483369350054e+21)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(2.06264806247096e+5)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(1.68726901875075e+16)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(1.53388092613704e+14)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(1.66613260339707e+13)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(6.13552370454817e+15)
    end
  end

  describe "ftm" do
    subject { described_class.new(1, "ftm") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(1.8288)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(72)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(6)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(2)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.00113636363636364)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(0.0909090909090909)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(72000)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(1.22247729292045e-11)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(5.92673716453585e-17)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(0.00909090909090909)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(0.000987473002159827)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(0.363636363636364)
    end
  end

  describe "fur" do
    subject { described_class.new(1, "fur") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(0.201168e3)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(7920)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(660)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(220)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.125)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(10)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(7.92e+6)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(1.3447250222125e-9)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(6.51941088098944e-15)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(110)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(0.108622030237581)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(40)
    end
  end

  describe "nmi" do
    subject { described_class.new(1, "nmi") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(1852)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(72913.3858267717)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(6076.11548556431)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(2025.37182852144)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(1.15077944802354)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(92.0623558418834)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(7.29133858267716e+7)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(1.23798553504412e-8)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(6.00192324405096e-14)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(1012.68591426072)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(9.20623558418834)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(368.249423367534)
    end
  end

  describe "rod" do
    subject { described_class.new(1, "rod") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(5.0292)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(198)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(16.5)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(5.5)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.003125)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(0.25)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(1.98e+5)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(3.36181255553125e-11)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(1.62985272024736e-16)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(2.75)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(0.025)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(0.00271555075593952)
    end
  end
end
