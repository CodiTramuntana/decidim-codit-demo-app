# frozen_string_literal: true

env= Rails.env
keys = %w(SECRET_KEY_BASE)
unless env.development? || env.test?
  keys += %w(DB_DATABASE DB_PASSWORD DB_USERNAME)
  keys += %w(MAILER_SMTP_ADDRESS MAILER_SMTP_DOMAIN MAILER_SMTP_PORT MAILER_SMTP_USER_NAME MAILER_SMTP_PASSWORD)
  keys += %w(GEOCODER_LOOKUP_API_KEY)
end
Figjam.require_keys(keys)
