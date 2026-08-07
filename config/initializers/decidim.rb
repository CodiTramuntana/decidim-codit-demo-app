# frozen_string_literal: true

Decidim.configure do |config|
  config.application_name = "My Decidim Name"

  config.mailer_sender = ENV.fetch("DECIDIM_MAILER_SENDER", "change-me@example.org")

  # Change these lines to set your preferred locales
  config.default_locale = :en
  config.available_locales = [:en, :ca, :es, :eu, :gl, :fr, :it, :pt]

  # Sets the default locale for new organizations. When creating a new
  # organization from the System area, system admins will be able to overwrite
  # this value for that specific organization.
  config.default_locale = ENV.fetch("DECIDIM_DEFAULT_LOCALE", "en").presence || :en

  # Custom HTML Header snippets
  #
  # The most common use is to integrate third-party services that require some
  # extra JavaScript or CSS. Also, you can use it to add extra meta tags to the
  # HTML. Note that this will only be rendered in public pages, not in the admin
  # section.
  #
  # Before enabling this you should ensure that any tracking that might be done
  # is in accordance with the rules and regulations that apply to your
  # environment and usage scenarios. This component also comes with the risk
  # that an organization's administrator injects malicious scripts to spy on or
  # take over user accounts.
  #
  config.enable_html_header_snippets = ENV["DECIDIM_ENABLE_HTML_HEADER_SNIPPETS"].present?

  # Allow organizations admins to track newsletter links.
  track_newsletter_links = ENV.fetch("DECIDIM_TRACK_NEWSLETTER_LINKS", "auto")
  config.track_newsletter_links = track_newsletter_links.present? unless track_newsletter_links == "auto"

  # Map and Geocoder configuration
  config.maps = {
    provider: :here,
    api_key: ENV["GEOCODER_LOOKUP_API_KEY"],
    static: { url: "https://image.maps.hereapi.com/mia/v3/base/mc/overlay" }
  }

  # Workaround to enable SVG assets cors
  # config.cors_enabled = ENV["DECIDIM_CORS_ENABLED"].present?

  # Max requests in a time period to prevent DoS attacks. Only applied on production.
  config.throttling_max_requests = ENV.fetch("DECIDIM_THROTTLING_MAX_REQUESTS", "100").to_i

  # Time window in which the throttling is applied.
  config.throttling_period = ENV.fetch("DECIDIM_THROTTLING_PERIOD", "1").to_i.minutes

  config.follow_http_x_forwarded_host = ENV["DECIDIM_FOLLOW_HTTP_X_FORWARDED_HOST"].present?
end

# Inform Decidim about the assets folder
Decidim.register_assets_path File.expand_path("app/packs", Rails.application.root)

Rails.application.config.i18n.available_locales = Decidim.available_locales
Rails.application.config.i18n.default_locale = Decidim.default_locale

# Inform Decidim about the assets folder
Decidim.register_assets_path File.expand_path("app/packs", Rails.application.root)

if Decidim.module_installed? :verifications
  Decidim::Verifications.configure do |config|
    config.document_types = ENV.fetch("VERIFICATIONS_DOCUMENT_TYPES", "identification_number passport").split
  end
end
