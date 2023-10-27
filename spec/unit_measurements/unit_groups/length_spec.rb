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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(1e+10)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(4.97096953789867)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(0.000207123730745778)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(9.84251968503937)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(0.000179985601151908)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(3.28083333333333)
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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(2.54e+8)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(0.126262626262626)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(5.26094276094276e-6)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(0.25)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(4.57163426925846e-6)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(0.0833331666666667)
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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(3048000000)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(1.51515151515152)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(6.31313131313131e-5)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(3)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(5.48596112311015e-5)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(0.999998)
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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(9.144e+9)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(4.54545454545454)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(0.000189393939393939)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(9)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(0.000164578833693305)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(2.999994)
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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(1.609344e+13)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(8000)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(0.333333333333333)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(15840)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(0.289658747300216)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(5279.98944)
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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(2.01168e+11)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(100)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(0.00416666666666667)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(198)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(0.0036207343412527)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(65.999868)
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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(254000)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(0.000126262626262626)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(5.26094276094276e-9)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(0.00025)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(4.57163426925846e-9)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(8.33331666666667e-5)
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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(1.495978707e+21)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(7.43646458184204e+11)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(3.09852690910085e+7)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(1.47241998720472e+12)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(2.69254626889849e+7)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(4.9080568078825e+11)
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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(3.08567758149137e+26)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(1.53388092613704e+17)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(6.39117052557101e+12)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(3.03708423375135e+17)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(5.55377534465689e+12)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(1.01235938652763e+17)
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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(1.8288e+10)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(9.09090909090909)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(0.000378787878787879)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(18)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(0.000329157667386609)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(5.999988)
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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(2.011680000000e+12)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(1000)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(0.0416666666666667)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(1980)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(0.036207343412527)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(659.99868)
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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(1.852e+13)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(9206.23558418834)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(0.383593149341181)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(18228.3464566929)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(0.333333333333333)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(6076.10333333333)
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

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(5.0292e+10)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(25)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(0.00104166666666667)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(49.5)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(0.000905183585313175)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(16.499967)
    end
  end

  describe "Å" do
    subject { described_class.new(1, "Å") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(1e-10)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(3.93700787401575e-9)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(3.28083989501312e-10)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(1.09361329833771e-10)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(6.21371192237334e-14)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(4.97096953789867e-12)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(3.93700787401575e-6)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(6.68458712226845e-22)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(3.24077928944437e-27)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(5.46806649168854e-11)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(4.97096953789867e-13)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(5.39956803455724e-14)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(1.98838781515947e-11)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(4.97096953789867e-10)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(2.07123730745778e-14)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(9.84251968503937e-10)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(1.79985601151908e-14)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(3.28083333333333e-10)
    end
  end

  describe "lnk" do
    subject { described_class.new(1, "lnk") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(0.201168)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(7.92)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(0.66)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(0.22)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.000125)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(0.01)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(7920)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(1.3447250222125e-12)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(6.51941088098944e-18)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(0.11)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(0.001)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(0.000108622030237581)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(0.04)
    end

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(2.01168e+9)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(4.16666666666667e-5)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(1.98)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(3.6207343412527e-5)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(0.65999868)
    end
  end

  describe "lea" do
    subject { described_class.new(1, "lea") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(4828.032)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(1.9008e+5)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(15840)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(5280)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(3)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(240)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(1.9008e+8)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(3.22734005331e-8)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(1.56465861143747e-13)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(2640)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(24)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(2.60692872570194)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(960)
    end

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(4.828032e+13)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(24000)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(47520)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(0.868976241900648)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(15839.96832)
    end
  end

  describe "h" do
    subject { described_class.new(1, "hh") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(0.1016)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(4)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(0.333333333333333)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(0.111111111111111)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(6.31313131313131e-5)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(0.00505050505050505)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(4000)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(6.79154051622474e-13)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(3.29263175807547e-18)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(0.0555555555555556)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(0.000505050505050505)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(5.48596112311015e-5)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(0.0202020202020202)
    end

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(1.016e+9)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(0.505050505050505)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(2.1043771043771e-5)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(1.82865370770338e-5)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(0.333332666666667)
    end
  end

  describe "nl" do
    subject { described_class.new(1, "nl") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(5556)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(2.18740157480315e+5)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(18228.3464566929)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(6076.11548556431)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(3.45233834407063)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(276.18706752565)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(2.18740157480315e+8)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(3.71395660513235e-8)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(1.80057697321529e-13)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(3038.05774278215)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(27.618706752565)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(3)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(1104.7482701026)
    end

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(5.556e+13)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(27618.706752565)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(1.15077944802354)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(54685.0393700787)
    end

    it "converts to sft" do
      expect(subject.convert_to("sft").quantity).to eq(18228.31)
    end
  end

  describe "sft" do
    subject { described_class.new(1, "sft") }

    it "converts to m" do
      expect(subject.convert_to("m").quantity).to eq(0.304800609601219)
    end

    it "converts to in" do
      expect(subject.convert_to("in").quantity).to eq(12.000024000048)
    end

    it "converts to ft" do
      expect(subject.convert_to("ft").quantity).to eq(1.000002000004)
    end

    it "converts to yd" do
      expect(subject.convert_to("yd").quantity).to eq(0.333334000001333)
    end

    it "converts to mi" do
      expect(subject.convert_to("mi").quantity).to eq(0.000189394318182576)
    end

    it "converts to ch" do
      expect(subject.convert_to("ch").quantity).to eq(0.0151515454546061)
    end

    it "converts to th" do
      expect(subject.convert_to("th").quantity).to eq(12000.024000048)
    end

    it "converts to au" do
      expect(subject.convert_to("au").quantity).to eq(2.03746622979988e-12)
    end

    it "converts to pc" do
      expect(subject.convert_to("pc").quantity).to eq(9.87791503005648e-18)
    end

    it "converts to ftm" do
      expect(subject.convert_to("ftm").quantity).to eq(0.166667000000667)
    end

    it "converts to fur" do
      expect(subject.convert_to("fur").quantity).to eq(0.00151515454546061)
    end

    it "converts to nmi" do
      expect(subject.convert_to("nmi").quantity).to eq(0.00016457916285163)
    end

    it "converts to rod" do
      expect(subject.convert_to("rod").quantity).to eq(0.0606061818184242)
    end

    it "converts to Å" do
      expect(subject.convert_to("Å").quantity).to eq(3.04800609601219e+9)
    end

    it "converts to lnk" do
      expect(subject.convert_to("lnk").quantity).to eq(1.51515454546061)
    end

    it "converts to lea" do
      expect(subject.convert_to("lea").quantity).to eq(6.31314393941919e-5)
    end

    it "converts to hh" do
      expect(subject.convert_to("h").quantity).to eq(3.000006000012)
    end

    it "converts to nl" do
      expect(subject.convert_to("nl").quantity).to eq(5.48597209505434e-5)
    end
  end
end
