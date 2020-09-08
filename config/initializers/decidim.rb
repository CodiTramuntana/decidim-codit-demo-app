# frozen_string_literal: true

Decidim.configure do |config|
  config.application_name = "My Decidim Name"

  config.mailer_sender = "change-me@domain.org"

  # Change these lines to set your preferred locales
  config.default_locale = :en
  config.available_locales = [:en, :ca, :es, :eu, :gl, :fr, :it, :pt]

  config.enable_html_header_snippets = true
  config.track_newsletter_links = true

  # Geocoder configuration
  config.geocoder = {
    here_api_key: Rails.application.secrets.geocoder[:here_api_key],
    static_map_url: "https://image.maps.ls.hereapi.com/mia/1.6/mapview",
  }

  # Image compression settings
  config.image_uploader_quality = 80
end

Rails.application.config.i18n.available_locales = Decidim.available_locales
Rails.application.config.i18n.default_locale = Decidim.default_locale
