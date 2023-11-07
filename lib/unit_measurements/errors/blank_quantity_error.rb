# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::BlankQuantityError+ class represents an error that
  # occurs when trying to initialize the +Measurement+ with a blank quantity.
  #
  # @see BaseError
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 5.10.0
  class BlankQuantityError < BaseError
    # Initializes a new +BlankQuantityError+ instance.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.10.0
    def initialize
      super("Quantity cannot be blank.")
    end
  end
end
