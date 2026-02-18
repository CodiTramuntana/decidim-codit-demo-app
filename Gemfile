# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { git: "https://github.com/CodiTramuntana/decidim.git", branch: "release/0.30-stable" }.freeze

gem "decidim", DECIDIM_VERSION
gem "decidim-conferences", DECIDIM_VERSION
gem "decidim-initiatives", DECIDIM_VERSION
gem "decidim-sortitions", DECIDIM_VERSION

gem "decidim-cdtb"
# NOT compatible with 0.30
# gem "decidim-challenges", git: "http://github.com/gencat/decidim-module-challenges", branch: "master"
gem "decidim-decidim_awesome", "0.13.1"
gem "decidim-file_authorization_handler", git: "https://github.com/coditramuntana/decidim-file_authorization_handler", branch: "master"
gem "decidim-term_customizer", git: "https://github.com/CodiTramuntana/decidim-module-term_customizer", branch: "upgrade/decidim_0.30"

# 7zip problems temporal fix
# https://github.com/masamitsu-murase/seven_zip_ruby/issues/41
gem "seven_zip_ruby", git: "https://github.com/andrewhamon/seven_zip_ruby", branch: "ah/install-so-in-gem-lib"

# TODO: Psych problem: https://github.com/laserlemon/figaro/issues/289
# gem "figaro"
# This gem is an alternative to Figaro meanwhile fix that problem in Figaro.
# https://github.com/hlascelles/figjam
gem "figjam"

# required by puma
gem "matrix"

gem "daemons"
gem "delayed_job_active_record"

gem "geocoder", ">= 1.6"
gem "openssl"
gem "puma"
gem "whenever"

# concurrent-ruby v1.3.5 has removed the dependency on logger
gem "concurrent-ruby"

group :development, :test do
  gem "better_errors"
  gem "binding_of_caller"
  gem "bootsnap"
  gem "decidim-dev", DECIDIM_VERSION
end

group :development do
  gem "letter_opener_web"

  gem "listen"
  gem "web-console"
end
