# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/unit_measurements/cache_spec.rb

RSpec.describe UnitMeasurements::Cache do
  let(:unit_group) { TEST_GROUP }
  let!(:cache) { described_class.new(unit_group) }

  before { cache.clear_cache }

  describe "#initialize" do
    it "initializes with a unit group" do
      expect(cache.cached_data).to eq({})
    end
  end

  describe "#get" do
    it "returns conversion factor if found in cache" do
      cache.instance_variable_set(:@cached_data, {"m" => {"km" => 0.001}})

      expect(cache.get("m", "km")).to eq(0.001)
    end

    it "returns nil if conversion factor not found in cache" do
      expect(cache.get("m", "km")).to be_nil
    end
  end

  describe "#set" do
    it "sets conversion factor in cache" do
      cache.set("m", "km", 0.001)

      expect(cache.get("m", "km")).to eq(0.001)
    end
  end

  describe "#clear_cache" do
    it "clears the cache" do
      cache.instance_variable_set(:@cached_data, {"m" => {"km" => 0.001}})
      cache.clear_cache

      expect(cache.cached_data).to eq({})
    end
  end

  describe "#build_cache_file_path" do
    context "when cache file is not specified in the unit group" do
      it "builds a cache file path from unit group" do
        allow(unit_group).to receive(:cache_file).and_return(nil)

        expect(cache.send(:build_cache_file_path, unit_group)).to eq(
          Pathname.new(File.expand_path("test_group.json", described_class::CACHE_DIRECTORY))
        )
      end
    end

    context "when cache file name is specified in the unit group" do
      it "builds a cache file path from specified file name" do
        allow(unit_group).to receive(:cache_file).and_return("custom_cache_file.json")

        expect(cache.send(:build_cache_file_path, unit_group)).to eq(
          Pathname.new(File.expand_path("custom_cache_file.json", described_class::CACHE_DIRECTORY))
        )
      end
    end
  end

  describe "#store_cache" do
    context "when the cache file exists" do
      it "stores the cache data" do
        expect { cache.send(:store_cache) }.to_not raise_error
      end
    end

    context "when the cache file does not exist" do
      it "rescues Errno::ENOENT" do
        allow(File).to receive(:exist?).and_return(false)
        allow(File).to receive(:open).and_raise(Errno::ENOENT)

        expect { cache.send(:store_cache) }.to_not raise_error
      end
    end

    context "when the cache file cannot be accessed due to insufficient permissions" do
      it "rescues Errno::EACCES" do
        allow(File).to receive(:exist?).and_return(true)
        allow(File).to receive(:open).and_raise(Errno::EACCES)

        expect { cache.send(:store_cache) }.to_not raise_error
      end
    end

    context "when there's not enough space to write to the cache file" do
      it "rescues Errno::ENOSPC" do
        allow(File).to receive(:exist?).and_return(true)
        allow(File).to receive(:open).and_raise(Errno::ENOSPC)

        expect { cache.send(:store_cache) }.to_not raise_error
      end
    end

    context "when there's an error generating JSON data" do
      it "rescues JSON::GeneratorError" do
        allow(File).to receive(:exist?).and_return(true)
        allow(JSON).to receive(:pretty_generate).and_raise(JSON::GeneratorError)

        expect { cache.send(:store_cache) }.to_not raise_error
      end
    end
  end

  describe "#load_cache" do
    context "when the cache file exists" do
      it "loads the cache data" do
        cache.set("unit1", "unit2", 2.0)

        expect(cache.send(:load_cache)).to eq({"unit1" => {"unit2" => 2.0}})
      end
    end

    context "when the cache file does not exist" do
      it "rescues Errno::ENOENT" do
        allow(File).to receive(:exist?).and_return(false)
        allow(File).to receive(:open).and_raise(Errno::ENOENT)

        expect { cache.send(:load_cache) }.to_not raise_error
      end
    end

    context "when the cache file cannot be accessed due to insufficient permissions" do
      it "rescues Errno::EACCES" do
        allow(File).to receive(:exist?).and_return(true)
        allow(File).to receive(:open).and_raise(Errno::EACCES)

        expect { cache.send(:load_cache) }.to_not raise_error
      end
    end

    context "when the cache file cannot be parsed" do
      it "rescues JSON::ParserError" do
        allow(File).to receive(:exist?).and_return(true)
        allow(JSON).to receive(:load).and_raise(JSON::ParserError)

        expect { cache.send(:load_cache) }.to_not raise_error
      end
    end
  end

  describe "#ensure_cache_directory_exists" do
    context "when the cache directory does not exist" do
      it "creates the cache directory" do
        allow(Dir).to receive(:exist?).and_return(false)

        expect(Dir).to receive(:mkdir).with(UnitMeasurements::Cache::CACHE_DIRECTORY)
        expect { cache.send(:ensure_cache_directory_exists) }.to_not raise_error
      end
    end

    context "when the cache directory cannot be accessed due to permission issues" do
      it "rescues Errno::EACCES" do
        allow(Dir).to receive(:exist?).and_return(true)
        allow(Dir).to receive(:mkdir).and_raise(Errno::EACCES)

        expect { cache.send(:ensure_cache_directory_exists) }.not_to raise_error
      end
    end

    context "when there's not enough space to create the cache directory" do
      it "rescues Errno::ENOSPC" do
        allow(Dir).to receive(:exist?).and_return(false)
        allow(Dir).to receive(:mkdir).and_raise(Errno::ENOSPC)

        expect { cache.send(:ensure_cache_directory_exists) }.not_to raise_error
      end
    end
  end
end
