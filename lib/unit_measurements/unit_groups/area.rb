# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

UnitMeasurements::Area = UnitMeasurements.build do
  primitive :m²

  system :metric do
    unit :m², aliases: [:"m^2", :"sq m", :"square meter", :"square meters", :"square metre", :"square metres"]
    unit :km², value: "1e+6 m²", aliases: [:"km^2", :"sq km", :"square kilometer", :"square kilometers", :"square kilometre", :"square kilometres"]
  end

  system :imperial do
    unit :in², value: "0.00064516 m²", aliases: [:"in^2", :"sq in", :"square inch", :"square inches"]
    unit :ft², value: "144 in²", aliases: [:"ft^2", :"sq ft", :"square foot", :"square feet"]
    unit :yd², value: "9 ft²", aliases: [:"yd^2", :"sq yd", :"square yard", :"square yards"]
    unit :mi², value: "3097600 yd²", aliases: [:"mi^2", :"sq mi", :"square mile", :"square miles"]
  end
end
