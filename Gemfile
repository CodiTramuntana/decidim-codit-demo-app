# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { git: "https://github.com/CodiTramuntana/decidim.git", branch: "release/0.24-stable" }.freeze

gem "decidim", DECIDIM_VERSION
gem "decidim-action_delegator", git: "https://github.com/coopdevs/decidim-module-action_delegator"
gem "decidim-challenges", git:"https://github.com/gencat/decidim-module-challenges"
gem "decidim-conferences", DECIDIM_VERSION
gem "decidim-consultations", DECIDIM_VERSION
gem "decidim-file_authorization_handler", git: "https://github.com/CodiTramuntana/decidim-file_authorization_handler.git", tag: "v0.15.0"
gem "decidim-initiatives", DECIDIM_VERSION
gem "decidim-sortitions", DECIDIM_VERSION
gem "decidim-term_customizer", git: "https://github.com/mainio/decidim-module-term_customizer", branch: "0.24-stable"
gem "decidim-verifications-members_picker", git: "https://github.com/gencat/decidim-verifications-members_picker.git"
gem "decidim-decidim_awesome", "~> 0.7.2"
gem "decidim-calendar", git: "https://github.com/luizsanches/decidim-module-calendar", tag: "decidim-0.24.3"

gem "rails", ">= 5.2.6.3"

gem "puma", ">= 5.6.2"
gem "uglifier", ">= 1.3.0"

gem "whenever", "~> 0.10.0"

gem "daemons"
gem "delayed_job_active_record"

gem "figaro", ">= 1.1.1"
gem "geocoder", ">= 1.6"

group :development, :test do
  gem "byebug", platform: :mri
  gem "decidim-dev", DECIDIM_VERSION
  gem "faker", "~> 2.19.0"
end

group :development do
  gem "listen", "~> 3.1.0"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console"
end
