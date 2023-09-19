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
      expect(subject.convert_to(:yr).quantity).to eq(1.90258543400074e-6)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(1)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(7.61034173600297e-6)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(1.90258543400074e-7)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(1.90258543400074e-8)
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
      expect(subject.convert_to(:yr).quantity).to eq(0.000114155126040045)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(60)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(0.000456620504160178)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(1.14155126040045e-5)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(1.14155126040045e-6)
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
      expect(subject.convert_to(:yr).quantity).to eq(0.00273972302496107)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(1440)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(0.0109588920998443)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(0.000273972302496107)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(2.73972302496107e-5)
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
      expect(subject.convert_to(:yr).quantity).to eq(0.0191780611747275)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(10080)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(0.0767122446989099)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(0.00191780611747275)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(0.000191780611747275)
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
      expect(subject.convert_to(:yr).quantity).to eq(0.038356122349455)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(20160)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(0.15342448939782)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(0.0038356122349455)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(0.00038356122349455)
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
      expect(subject.convert_to(:yr).quantity).to eq(0.0833333333333333)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(43800.048)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(0.333333333333333)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(0.00833333333333333)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(0.000833333333333333)
    end
  end

  describe "yr" do
    subject { described_class.new(1, :yr) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(3.153603456e+7)
    end

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(8760.0096)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(365.0004)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(52.1429142857143)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(26.0714571428571)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(12)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(5.25600576e+5)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(4)
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
      expect(subject.convert_to(:yr).quantity).to eq(1.90258543400074e-6)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(7.61034173600297e-6)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(1.90258543400074e-7)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(1.90258543400074e-8)
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
      expect(subject.convert_to(:yr).quantity).to eq(0.25)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(1.31400144e+5)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(0.025)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(0.0025)
    end
  end

  describe "dec" do
    subject { described_class.new(1, :dec) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(3.153603456e+8)
    end

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(8.7600096e+4)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(3650.004)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(521.429142857143)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(260.714571428571)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(120)
    end

    it "converts to yr" do
      expect(subject.convert_to(:yr).quantity).to eq(10)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(5.25600576e+6)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(40)
    end

    it "converts to cent" do
      expect(subject.convert_to(:cent).quantity).to eq(0.1)
    end
  end

  describe "cent" do
    subject { described_class.new(1, :cent) }

    it "converts to s" do
      expect(subject.convert_to(:s).quantity).to eq(3.153603456e+9)
    end

    it "converts to h" do
      expect(subject.convert_to(:h).quantity).to eq(8.7600096e+5)
    end

    it "converts to d" do
      expect(subject.convert_to(:d).quantity).to eq(36500.04)
    end

    it "converts to wk" do
      expect(subject.convert_to(:wk).quantity).to eq(5214.29142857143)
    end

    it "converts to fn" do
      expect(subject.convert_to(:fn).quantity).to eq(2607.14571428571)
    end

    it "converts to mo" do
      expect(subject.convert_to(:mo).quantity).to eq(1200)
    end

    it "converts to yr" do
      expect(subject.convert_to(:yr).quantity).to eq(100)
    end

    it "converts to min" do
      expect(subject.convert_to(:min).quantity).to eq(5.25600576e+7)
    end

    it "converts to qtr" do
      expect(subject.convert_to(:qtr).quantity).to eq(400)
    end

    it "converts to dec" do
      expect(subject.convert_to(:dec).quantity).to eq(10)
    end
  end
end
