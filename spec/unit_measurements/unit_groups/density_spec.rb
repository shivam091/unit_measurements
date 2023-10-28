# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/density_spec.rb

RSpec.describe UnitMeasurements::Density do
  describe "g/m³" do
    subject { described_class.new(5, "g/m³") }

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(0.005)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(0.005)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(5e-6)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(5e-6)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(0.00499423684545558)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(2.89018336065439e-6)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(0.000801793028453909)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(0.000312139802957891)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(1.80636460001744e-7)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(5.01120642763603e-5)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(9.7016016597705e-6)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(5.61435290953496e-9)
    end
  end

  describe "kg/m³" do
    subject { described_class.new(5, "kg/m³") }

    it "converts to g/m³" do
      expect(subject.convert_to("g/m³").quantity).to eq(5000)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(5)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(0.005)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(0.005)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(4.99423684545558)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(0.00289018336065439)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(0.801793028453909)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(0.312139802957891)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(0.000180636460001744)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(0.0501120642763603)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(0.0097016016597705)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(5.61435290953495e-6)
    end
  end

  describe "g/l" do
    subject { described_class.new(5, "g/l") }

    it "converts to g/m³" do
      expect(subject.convert_to("g/m³").quantity).to eq(5000)
    end

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(5)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(0.005)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(0.005)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(4.99423684545558)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(0.00289018336065439)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(0.801793028453909)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(0.312139802957891)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(0.000180636460001744)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(0.0501120642763603)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(0.0097016016597705)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(5.61435290953495e-6)
    end
  end

  describe "g/ml" do
    subject { described_class.new(5, "g/ml") }

    it "converts to g/m³" do
      expect(subject.convert_to("g/m³").quantity).to eq(5e+6)
    end

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(5000)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(5000)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(5)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(4994.23684545558)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(2.89018336065439)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(801.793028453909)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(312.139802957891)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(0.180636460001744)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(50.1120642763603)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(9.7016016597705)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(0.00561435290953495)
    end
  end

  describe "kg/l" do
    subject { described_class.new(5, "kg/l") }

    it "converts to g/m³" do
      expect(subject.convert_to("g/m³").quantity).to eq(5e+6)
    end

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(5000)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(5000)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(5)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(4994.23684545558)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(2.89018336065439)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(801.793028453909)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(312.139802957891)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(0.180636460001744)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(50.1120642763603)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(9.7016016597705)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(0.00561435290953495)
    end
  end

  describe "oz/ft³" do
    subject { described_class.new(5, "oz/ft³") }

    it "converts to g/m³" do
      expect(subject.convert_to("g/m³").quantity).to eq(5005.769805)
    end

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(5.005769805)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(5.005769805)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(0.005005769805)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(0.005005769805)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(0.00289351851953543)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(0.802718266338816)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(0.312500000117052)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(0.000180844907431764)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(0.0501698916441647)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(0.00971279692972341)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(5.62083165383279e-6)
    end
  end

  describe "oz/in³" do
    subject { described_class.new(5, "oz/in³") }

    it "converts to g/m³" do
      expect(subject.convert_to("g/m³").quantity).to eq(8.64997022e+6)
    end

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(8649.97022)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(8649.97022)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(8.64997022)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(8.64997022)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(8639.9999969635)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(1387.09716374598)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(540.000000012486)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(0.312499999932261)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(86.6935727306485)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(16.7837130886635)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(0.00971279709440954)
    end
  end

  describe "oz/gal" do
    subject { described_class.new(5, "oz/gal") }

    it "converts to g/m³" do
      expect(subject.convert_to("g/m³").quantity).to eq(31180.116455)
    end

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(31.180116455)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(31.180116455)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(0.031180116455)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(0.031180116455)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(31.1441772890314)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(0.0180232507523014)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(1.94651108129356)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(0.00112645317177467)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(0.312499999987472)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(0.0604994139103331)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(3.50112355077536e-5)
    end
  end

  describe "lb/ft³" do
    subject { described_class.new(5, "lb/ft³") }

    it "converts to g/m³" do
      expect(subject.convert_to("g/m³").quantity).to eq(80092.31685)
    end

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(80.09231685)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(80.09231685)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(0.08009231685)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(0.08009231685)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(79.9999999700346)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(0.0462962962952259)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(12.8434922566103)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(0.00289351851782441)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(0.802718266005963)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(0.155404750817365)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(8.99333064276386e-5)
    end
  end

  describe "lb/in³" do
    subject { described_class.new(5, "lb/in³") }

    it "converts to g/m³" do
      expect(subject.convert_to("g/m³").quantity).to eq(1.3839952355e+8)
    end

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(1.3839952355e+5)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(138399.52355)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(138.39952355)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(138.39952355)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(138239.999981381)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(80.0000000173411)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(22193.5546247465)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(8640.00000207261)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(1387.09716399105)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(268.539409476825)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(0.155404753544239)
    end
  end

  describe "lb/gal" do
    subject { described_class.new(5, "lb/gal") }

    it "converts to g/m³" do
      expect(subject.convert_to("g/m³").quantity).to eq(498881.8633)
    end

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(498.8818633)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(498.8818633)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(0.4988818633)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(0.4988818633)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(498.306836644479)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(0.288372012048384)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(80.0000000032072)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(31.1441773019455)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(0.0180232507491172)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(0.967990622604136)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(0.000560179768146515)
    end
  end

  describe "slug/ft³" do
    subject { described_class.new(5, "slug/ft³") }

    it "converts to g/m³" do
      expect(subject.convert_to("g/m³").quantity).to eq(2.576894092e+6)
    end

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(2576.894092)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(2576.894092)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(2.576894092)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(2.576894092)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(2573.92388422064)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(1.4895392853734)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(413.227143605933)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(160.870242824047)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(0.0930962053156577)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(25.8266964743354)
    end

    it "converts to slug/in³" do
      expect(subject.convert_to("slug/in³").quantity).to eq(0.00289351856859673)
    end
  end

  describe "slug/in³" do
    subject { described_class.new(5, "slug/in³") }

    it "converts to g/m³" do
      expect(subject.convert_to("g/m³").quantity).to eq(4452872913.91)
    end

    it "converts to kg/m³" do
      expect(subject.convert_to("kg/m³").quantity).to eq(4.45287291391e+6)
    end

    it "converts to g/l" do
      expect(subject.convert_to("g/l").quantity).to eq(4.45287291391e+6)
    end

    it "converts to g/ml" do
      expect(subject.convert_to("g/ml").quantity).to eq(4452.87291391)
    end

    it "converts to kg/l" do
      expect(subject.convert_to("kg/l").quantity).to eq(4452.87291391)
    end

    it "converts to oz/ft³" do
      expect(subject.convert_to("oz/ft³").quantity).to eq(4.4477403949561e+6)
    end

    it "converts to oz/in³" do
      expect(subject.convert_to("oz/in³").quantity).to eq(2573.92384057826)
    end

    it "converts to oz/gal" do
      expect(subject.convert_to("oz/gal").quantity).to eq(714056.491792856)
    end

    it "converts to lb/ft³" do
      expect(subject.convert_to("lb/ft³").quantity).to eq(2.7798377478888e+5)
    end

    it "converts to lb/in³" do
      expect(subject.convert_to("lb/in³").quantity).to eq(160.870240001271)
    end

    it "converts to lb/gal" do
      expect(subject.convert_to("lb/gal").quantity).to eq(44628.5307352644)
    end

    it "converts to slug/ft³" do
      expect(subject.convert_to("slug/ft³").quantity).to eq(8639.99985046727)
    end
  end
end
