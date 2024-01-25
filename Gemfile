# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { git: "https://github.com/CodiTramuntana/decidim.git", branch: "release/0.28-stable" }.freeze

gem "decidim", DECIDIM_VERSION

gem "puma"

# TODO: Psych problem: https://github.com/laserlemon/figaro/issues/289
# gem "figaro"
gem "openssl"

gem "daemons"
gem "delayed_job_active_record"
gem "whenever"

# if deploying to a PaaS like Heroku
# gem "redis"
# gem "sidekiq"
# group :production do
# if AWS is used
#   gem "aws-sdk-s3", require: false
#   gem "fog-aws"
#   gem "rack-ssl-enforcer"
#   gem "rails_12factor"
# end
# endif

group :development, :test do
  gem "better_errors"
  gem "binding_of_caller"
  gem "bootsnap"
  gem "byebug", platform: :mri
  gem "decidim-dev", DECIDIM_VERSION
  gem "faker"
end

group :development do
  gem "letter_opener_web"
  gem "listen"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console"
end
