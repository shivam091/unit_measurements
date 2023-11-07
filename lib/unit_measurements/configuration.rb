# -*- encoding: utf-8 -*-
# -*- frozen_stringing_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Configuration+ class maintains and manages the globally
  # configurable options of +*unit_measurements*+.
  #
  # @note
  #   This class is responsible for configuring globally configurable options of
  #   +*unit_measurements*+.
  #
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 5.3.0
  class Configuration
    # Get the current value of the +use_cache+ option.
    #
    # @note
    #   This option controls whether caching is enabled for converting measurements.
    #   Defaults to +false+.
    #
    # @return [TrueClass|FalseClass]
    #   Returns +true+ if caching is enabled, otherwise +false+.
    #
    # @see Cache
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.3.0
    attr_reader :use_cache

    # Initializes a new +Configuration+ instance with default values of configurable
    # options.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.3.0
    def initialize
      self.use_cache = false
    end

    # Sets a value for the +use_cache+ option.
    #
    # It controls whether caching is enabled for converting measurements. When
    # caching is enabled, previously computed conversion factors are stored for
    # future use, improving conversion performance.
    #
    # @param [TrueClass|FalseClass] use_cache
    #   +true+ if caching should be used while converting the measurement otherwise
    #   +false+.
    #
    # @return [TrueClass|FalseClass] The updated value of +use_cache+.
    #
    # @raise [BaseError] if +use_cache+ is not a boolean value.
    #
    # @see Cache
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.3.0
    def use_cache=(use_cache)
      unless [true, false].include?(use_cache)
        raise ArgumentError, "Configuration#use_cache= only accepts true or false, but received #{use_cache}"
      end

      @use_cache = use_cache
    end
  end
end
