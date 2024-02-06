# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { git: "https://github.com/CodiTramuntana/decidim.git", branch: "release/0.27-stable" }.freeze

gem "decidim", DECIDIM_VERSION
gem "decidim-conferences", DECIDIM_VERSION
gem "decidim-consultations", DECIDIM_VERSION
gem "decidim-initiatives", DECIDIM_VERSION
gem "decidim-sortitions", DECIDIM_VERSION

gem "decidim-action_delegator", git: "https://github.com/CodiTramuntana/decidim-module-action_delegator"
gem "decidim-budgets_paper_ballots", git: "https://github.com/digidemlab/decidim-module-budgets_paper_ballots"
gem "decidim-cdtb", git: "https://github.com/CodiTramuntana/decidim-module-cdtb.git", branch: "main"
gem "decidim-challenges", git: "https://github.com/gencat/decidim-module-challenges", tag: "v0.3.1"
gem "decidim-decidim_awesome", "~> 0.9.2"
gem "decidim-file_authorization_handler", git: "https://github.com/CodiTramuntana/decidim-file_authorization_handler.git", tag: "v0.27.1.6"
gem "decidim-survey_multiple_answers"
gem "decidim-survey_results", git: "https://github.com/CodiTramuntana/decidim-module-survey_results"
gem "decidim-term_customizer", git: "https://github.com/mainio/decidim-module-term_customizer", branch: "release/0.27-stable"
gem "decidim-verifications-members_picker", git: "https://github.com/gencat/decidim-verifications-members_picker.git", tag: "0.0.5"

# temporal solution while gems embrace new psych 4 (the default in Ruby 3.1) behavior.
gem "psych", "< 4"

gem "rails", ">= 5.2.6.3"

gem "puma", ">= 5.6.2"
gem "uglifier", ">= 1.3.0"
gem "webpacker"

gem "whenever", "~> 0.10.0"

gem "daemons"
gem "delayed_job_active_record"

gem "figaro", ">= 1.1.1"
gem "geocoder", ">= 1.6"
gem "openssl"

group :development, :test do
  gem "byebug", platform: :mri
  gem "decidim-dev", DECIDIM_VERSION
  gem "faker", "~> 2.19.0"
end

group :development do
  gem "letter_opener_web"
  gem "listen"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console"
end
