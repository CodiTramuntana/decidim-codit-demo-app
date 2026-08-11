# frozen_string_literal: true

require "erb"
require "yaml"

env = Rails.env
keys = %w(SECRET_KEY_BASE)
keys += %w(DB_DATABASE DB_PASSWORD DB_USERNAME)
unless env.development? || env.test?
  keys += %w(MAILER_SMTP_ADDRESS MAILER_SMTP_DOMAIN MAILER_SMTP_PORT MAILER_SMTP_USER_NAME MAILER_SMTP_PASSWORD)
  keys += %w(GEOCODER_LOOKUP_API_KEY)
end

example_config_path = Rails.root.join("config", "application.example.yml")
if File.exist?(example_config_path)
  example_config = YAML.safe_load(ERB.new(File.read(example_config_path)).result, aliases: true) || {}
  example_defaults = example_config.fetch("default", {})
  example_env_config = example_defaults.merge(example_config.fetch(env, {}))

  example_env_config.each do |key, value|
    ENV[key] ||= value.to_s unless value.nil?
  end
end

Figjam.require_keys(keys)
