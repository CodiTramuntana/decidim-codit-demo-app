# frozen_string_literal: true

ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "dotenv/load"
require "bundler/setup" # Set up gems listed in the Gemfile.
