# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::BlankUnitError+ class represents an error that
  # occurs when trying to initialize the +Measurement+ with a blank unit.
  #
  # @see BaseError
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 5.10.0
  class BlankUnitError < BaseError
    # Initializes a new +BlankUnitError+ instance.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.10.0
    def initialize
      super("Unit cannot be blank.")
    end
  end
end
