source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { git: "https://git@github.com/decidim/decidim.git" }

gem "decidim", DECIDIM_VERSION
gem "decidim-initiatives", DECIDIM_VERSION
gem "decidim-sortitions", DECIDIM_VERSION
gem "decidim-consultations", DECIDIM_VERSION
gem "decidim-conferences", DECIDIM_VERSION
gem 'decidim-file_authorization_handler', git: "https://github.com/CodiTramuntana/decidim-file_authorization_handler.git", :branch => 'fix/ensure_all_data_properly_encoded'

gem 'puma', '~> 3.0'
gem 'uglifier', '>= 1.3.0'

gem "whenever", "~> 0.10.0"

gem 'delayed_job_active_record'
gem "daemons"

gem 'figaro', '>= 1.1.1'

group :development, :test do
  gem 'byebug', platform: :mri
  gem "decidim-dev", DECIDIM_VERSION
  gem 'faker', "~> 1.8.4"
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.1.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
