# frozen_string_literal: true

Decidim.configure do |config|
  config.application_name = "My Decidim Name"

  config.mailer_sender = Rails.application.secrets.smtp_username

  # Change these lines to set your preferred locales
  config.default_locale = :en
  config.available_locales = [:en, :ca, :es, :eu, :gl, :fr, :it, :pt]

  config.enable_html_header_snippets = true
  config.track_newsletter_links = true
  config.maps = {
    provider: :here,
    api_key: Rails.application.secrets.maps[:here_api_key],
    static: { url: "https://image.maps.ls.hereapi.com/mia/1.6/mapview" }
  }

  # Image compression settings
  config.image_uploader_quality = 80

  # API schema settings
  Decidim::Api::Schema.max_complexity = 5000
  Decidim::Api::Schema.max_depth = 50
end

# Inform Decidim about the assets folder
Decidim.register_assets_path File.expand_path("app/packs", Rails.application.root)

Rails.application.config.i18n.available_locales = Decidim.available_locales
Rails.application.config.i18n.default_locale = Decidim.default_locale
