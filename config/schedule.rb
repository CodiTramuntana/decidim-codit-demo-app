# frozen_string_literal: true

env :PATH, ENV.fetch("PATH", nil)

every 1.day, at: "5:00 am" do
  rake "decidim:metrics:all"
end

every 1.day, at: "3:00 am" do # 1.minute 1.day 1.week 1.month 1.year is also supported
  rake "decidim:open_data:export"
end
