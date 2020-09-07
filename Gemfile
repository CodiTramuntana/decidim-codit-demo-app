# frozen_string_literal: true

source 'https://rubygems.org'

ruby RUBY_VERSION

DECIDIM_VERSION = { git: 'https://git@github.com/decidim/decidim.git', branch: "release/0.21-stable"  }.freeze

gem 'decidim', DECIDIM_VERSION
gem 'decidim-conferences', DECIDIM_VERSION
gem 'decidim-consultations', DECIDIM_VERSION
gem 'decidim-file_authorization_handler', git: 'https://github.com/CodiTramuntana/decidim-file_authorization_handler.git'
# gem 'decidim-initiatives', DECIDIM_VERSION
gem 'decidim-term_customizer', git: 'https://github.com/CodiTramuntana/decidim-module-term_customizer'
gem 'decidim-sortitions', DECIDIM_VERSION
gem 'decidim-verifications-members_picker', git: 'https://github.com/gencat/decidim-verifications-members_picker.git'

gem 'puma', '>= 4.3'
gem 'uglifier', '>= 1.3.0'

gem 'whenever', '~> 0.10.0'

gem 'daemons'
gem 'delayed_job_active_record'

gem 'figaro', '>= 1.1.1'
gem 'geocoder', '>= 1.6'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'decidim-dev', DECIDIM_VERSION
  gem 'faker', '~> 1.8.4'
end

group :development do
  gem 'listen', '~> 3.1.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console'
end
