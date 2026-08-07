# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: ENV["MAILER_SMTP_USER_NAME"].presence || ENV.fetch("DECIDIM_MAILER_SENDER", "change-me@example.org")
  layout "mailer"
end
