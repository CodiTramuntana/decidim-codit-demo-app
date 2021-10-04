# frozen_string_literal: true

every 1.day, at: "2:00 am" do # 1.minute 1.day 1.week 1.month 1.year is also supported
  rake "decidim:metrics:all"
end

every 1.day, at: "3:00 am" do # 1.minute 1.day 1.week 1.month 1.year is also supported
  rake "decidim:open_data:export"
end
