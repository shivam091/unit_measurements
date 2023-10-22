# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

module UnitMeasurements
  # The +UnitMeasurements::Cache+ class manages caching of conversion factors
  # between different units within a unit group. It provides methods to retrieve,
  # set, and clear cached conversion factors.
  #
  # Cached conversion factors are stored in JSON file on the file system.
  #
  # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
  # @since 5.2.0
  class Cache
    # The directory path where cache files are stored.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    CACHE_DIRECTORY = File.expand_path(File.join("..", "..", "cache"), __dir__).freeze

    # Stores cached conversion factors between different units within a unit
    # group.
    #
    # @return [Hash] The cached conversion factors.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    attr_reader :cached_data

    # Initializes a new +Cache+ instance for a specific unit group.
    #
    # Initialization first ensures existence of the cache directory. If the cache
    # directory does not exist, it gets created.
    #
    # @param [UnitGroup] unit_group The unit group associated with the cache.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    def initialize(unit_group)
      ensure_cache_directory_exists
      @cache_file = build_cache_file_path(unit_group)
      @cached_data ||= load_cache
    end

    # Retrieves the conversion factor between source and target units from the
    # cache.
    #
    # @param [String] source_unit The source unit name.
    # @param [String] target_unit The target unit name.
    #
    # @return [Numeric|NilClass]
    #   The conversion factor, or +nil+ if not found in the cache.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    def get(source_unit, target_unit)
      cached_data.dig(source_unit, target_unit)
    end

    # Sets the conversion factor between source and target units in the cache.
    #
    # @param [String] source_unit The source unit name.
    # @param [String] target_unit The target unit name.
    # @param [Numeric] conversion_factor The conversion factor.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    def set(source_unit, target_unit, conversion_factor)
      cached_data[source_unit] ||= {}
      cached_data[source_unit][target_unit] = conversion_factor

      store_cache
    end

    # Clears the entire cache.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    def clear_cache
      @cached_data = {}
      store_cache
    end

    private

    # @private
    # Loads the cache from the cache file.
    #
    # @return [Hash] The loaded cache data.
    #
    # @raise [Errno::ENOENT] If the cache file does not exist.
    # @raise [Errno::EACCES]
    #   If the cache file cannot be accessed due to insufficient permissions.
    # @raise [JSON::ParserError] If there's an error parsing the cache file.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    def load_cache
      return {} unless File.exist?(@cache_file)

      begin
        File.open(@cache_file, "r") { |file| JSON.load(file.read) }
      rescue Errno::ENOENT, Errno::EACCES, JSON::ParserError => e
        puts "Error loading cache"
        {}
      end
    end

    # @private
    # Stores the current cache data to the cache file. +cached_data+ is stored in
    # prettier form.
    #
    # @raise [Errno::ENOENT] If the cache file does not exist.
    # @raise [Errno::EACCES]
    #   If the cache file cannot be accessed due to insufficient permissions.
    # @raise [Errno::ENOSPC]
    #   If there's not enough space to write to the cache file.
    # @raise [JSON::GeneratorError] If there's an error generating JSON data.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    def store_cache
      begin
        File.open(@cache_file, "w") do |file|
          file.write(JSON.pretty_generate(cached_data))
        end
      rescue Errno::ENOENT, Errno::EACCES, Errno::ENOSPC, JSON::GeneratorError => e
        puts "Error saving cache: #{e.message}"
      end
    end

    # @private
    # Ensures that the cache directory exists. If the cache directory does not
    # exist, it gets created.
    #
    # @raise [Errno::EEXIST] If the cache directory already exists.
    # @raise [Errno::EACCES]
    #   If the cache directory cannot be accessed due to insufficient permissions.
    # @raise [Errno::ENOSPC]
    #   If there's not enough space to create the cache directory.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    def ensure_cache_directory_exists
      begin
        Dir.mkdir(CACHE_DIRECTORY) unless Dir.exist?(CACHE_DIRECTORY)
      rescue Errno::EACCES, Errno::ENOSPC => e
        puts "Error creating cache directory: #{e.message}"
      end
    end

    # @private
    # Builds and returns an absolute path of the cache file.
    #
    # This method first checks if the cache file name is specified for the unit
    # group. If yes, it builds absolute path of the cache file using specified
    # cache file name. If not, it builds file name from of the name of the unit
    # group. This file name is then used to build absolute path of the cache file.
    #
    # @param [UnitGroup] unit_group The unit group associated with the cache.
    #
    # @return [String] An absolute path of the cache file.
    #
    # @author {Harshal V. Ladhe}[https://shivam091.github.io/]
    # @since 5.2.0
    def build_cache_file_path(unit_group)
      cache_file_name = unit_group.cache_file || unit_group.to_s.split("::").last.underscore
      cache_file_name = File.basename(cache_file_name, ".json") + ".json"

      Pathname.new(File.join(CACHE_DIRECTORY, cache_file_name)).cleanpath
    end
  end
end
