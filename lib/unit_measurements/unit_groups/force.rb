# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Force = UnitMeasurements.build do
  primitive "N"

  system :metric do
    si_unit "N", aliases: ["newton", "newtons"]

    unit "p", value: "0.00980665 N", aliases: ["pond", "ponds"]
    unit "gf", value: "0.00980665 N", aliases: ["gram-force", "gramme-force"]
    unit "kgf", value: "9.80665 N", aliases: ["kp", "gvf", "kilogram-force", "kilogramme-force"]
    unit "mgvf", value: "9.80665 mN", aliases: ["gvtf", "gravet-force", "milligrave-force"]
  end

  system :centimetre_gram_second do
    unit "dyn", value: "1e-5 N", aliases: ["dyne", "dynes"]
  end

  system :metre_tonne_second do
    unit "sn", value: "1e+3 N", aliases: ["sthene", "sthenes", "sthène"]
    unit "tf", value: "8896.443230521 N", aliases: ["metric ton-force", "tonne-force"]
  end

  system :english_engineering do
    unit "lbf", value: "4.4482216152605 N", aliases: ["pound-force"]
  end

  system :foot_pound_second do
    unit "pdl", value: "0.138254954376 N", aliases: ["poundal", "poundals"]
    unit "ozf", value: "0.27801385095378125 N", aliases: ["ounce-force"]
  end

  system :us_customary do
    unit "tnf", value: "2000 lbf", aliases: ["ton-force", "short ton-force"]
    unit "kipf", value: "4.4482216152605e+3 N", aliases: ["kip", "klbf", "kip-force"]
  end

  system :imperial do
    unit "LTf", value: "2240 lbf", aliases: ["long ton-force"]
    unit "(lb⋅m)/s²", value: "0.45359237 N", aliases: ["(lb*m)/s^2", "pound meter per second squared", "pound metre per second squared"]
    unit "(lb⋅ft)/s²", value: "0.138254954376 N", aliases: ["(lb*ft)/s^2", "pound foot per second squared"]
    unit "(lb⋅in)/s²", value: "0.011521246198	N", aliases: ["(lb*in)/s^2", "pound inch per second squared"]
  end

  system :planck_units do
    unit "Fₚ", value: "1.2103e+44 N", aliases: ["planck force", "quantum force"]
  end
end
