# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/unit_groups/time_spec.rb

RSpec.describe UnitMeasurements::Time do
  describe "s" do
    subject { described_class.new(60, :s) }

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(0.0166666666666667)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(0.000694444444444444)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(9.92063492063492e-5)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(4.96031746031746e-5)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(2.28310252080089e-5)
    end

    it "converts to yr" do
      expect(subject.convert_to(:yr).quantity).to eq(1.90258751902588e-6)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(1)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(7.61034173600297e-6)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(1.90258751902588e-7)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(1.90258751902588e-8)
    end
  end

  describe "h" do
    subject { described_class.new(1, :h) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(3600)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(0.0416666666666667)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(0.00595238095238095)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(0.00297619047619048)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(0.00136986151248053)
    end

    it "converts to yr" do
      expect(subject.convert_to(:yr).quantity).to eq(1.14155251141553e-4)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(60)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(0.000456620504160178)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(1.14155251141553e-5)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(1.14155251141553e-6)
    end
  end

  describe "d" do
    subject { described_class.new(1, :d) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(86400)
    end

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(24)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(0.142857142857143)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(0.0714285714285714)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(0.0328766762995328)
    end

    it "converts to yr" do
      expect(subject.convert_to(:yr).quantity).to eq(0.00273972602739726)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(1440)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(0.0109588920998443)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(0.000273972602739726)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(2.73972602739726e-5)
    end
  end

  describe "wk" do
    subject { described_class.new(1, :wk) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(604800)
    end

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(168)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(7)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(0.5)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(0.23013673409673)
    end

    it "converts to yr" do
      expect(subject.convert_to(:yr).quantity).to eq(0.0191780821917808)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(10080)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(0.0767122446989099)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(0.00191780821917808)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(0.000191780821917808)
    end
  end

  describe "fn" do
    subject { described_class.new(1, :fn) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(1.2096e+6)
    end

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(336)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(14)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(2)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(0.46027346819346)
    end

    it "converts to yr" do
      expect(subject.convert_to(:yr).quantity).to eq(0.0383561643835616)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(20160)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(0.15342448939782)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(0.00383561643835616)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(0.000383561643835616)
    end
  end

  describe "mo" do
    subject { described_class.new(1, :mo) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(2.62800288e+6)
    end

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(730.0008)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(30.4167)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(4.34524285714286)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(2.17262142857143)
    end

    it "converts to yr" do
      expect(subject.convert_to(:yr).quantity).to eq(0.0833334246575342)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(43800.048)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(0.333333333333333)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(0.00833334246575342)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(0.000833334246575342)
    end
  end

  describe "yr" do
    subject { described_class.new(1, :yr) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(3.1536e+7)
    end

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(8760)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(365)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(52.1428571428571)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(26.0714285714286)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(11.9999868493295)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(525600)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(3.99999561644316)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(0.1)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(0.01)
    end
  end

  describe "min" do
    subject { described_class.new(1, :min) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(60)
    end

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(0.0166666666666667)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(0.000694444444444444)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(9.92063492063492e-5)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(4.96031746031746e-5)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(2.28310252080089e-5)
    end

    it "converts to yr" do
      expect(subject.convert_to(:yr).quantity).to eq(1.90258751902588e-6)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(7.61034173600297e-6)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(1.90258751902588e-7)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(1.90258751902588e-8)
    end
  end

  describe "qtr" do
    subject { described_class.new(1, :qtr) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(7.88400864e+6)
    end

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(2190.0024)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(91.2501)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(13.0357285714286)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(6.51786428571429)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(3)
    end

    it "converts to yr" do
      expect(subject.convert_to(:yr).quantity).to eq(0.250000273972603)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(1.31400144e+5)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(0.0250000273972603)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(0.00250000273972603)
    end
  end

  describe "dec" do
    subject { described_class.new(1, :dec) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(3.1536e+8)
    end

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(87600)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(3650)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(521.428571428571)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(260.714285714286)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(119.999868493295)
    end

    it "converts to yr" do
      expect(subject.convert_to(:yr).quantity).to eq(10)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(5.256e+6)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(39.9999561644316)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(0.1)
    end
  end

  describe "cent" do
    subject { described_class.new(1, :cent) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(3.1536e+9)
    end

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(876000)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(36500)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(5214.28571428571)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(2607.14285714286)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(1199.99868493295)
    end

    it "converts to yr" do
      expect(subject.convert_to(:yr).quantity).to eq(100)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(5.256e+7)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(399.999561644316)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(10)
    end
  end
end
