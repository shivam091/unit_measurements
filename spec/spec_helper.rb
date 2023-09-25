# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

ENV["RAILS_ENV"] ||= "test"

require "simplecov"
SimpleCov.start

$:.unshift File.expand_path("../../lib", __FILE__)
require "unit_measurements"

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
  config.order = "default"

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
