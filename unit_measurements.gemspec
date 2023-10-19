# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

lib = File.expand_path("../lib", __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require "unit_measurements/version"

Gem::Specification.new do |spec|
  spec.name = "unit_measurements"
  spec.version = UnitMeasurements::VERSION
  spec.authors = ["Harshal LADHE"]
  spec.email = ["harshal.ladhe.1@gmail.com"]

  spec.description = "A library that encapsulate measurements and their units in Ruby."
  spec.summary = spec.description
  spec.homepage = "https://github.com/shivam091/unit_measurements"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.2"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["documentation_uri"] = "https://rubydoc.info/gems/unit_measurements"
  spec.metadata["source_code_uri"] = "https://github.com/shivam091/unit_measurements"
  spec.metadata["changelog_uri"] = "https://github.com/shivam091/unit_measurements/blob/main/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "https://github.com/shivam091/unit_measurements/issues"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport", "~> 7.0"

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov", "~> 0.21", ">= 0.21.2"
  spec.add_development_dependency "byebug", "~> 11"
end
