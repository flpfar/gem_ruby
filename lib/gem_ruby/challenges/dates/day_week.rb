# frozen_string_literal: true

module Challenges
  module Dates
    DAY_WEEK = {
      0 => "Sunday",
      1 => "Monday",
      2 => "Tuesday",
      3 => "Wednesday",
      4 => "Thursday",
      5 => "Friday",
      6 => "Saturday"
    }.freeze

    def self.day_week(date)
      t = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]
      d, m, y = date.split("/").map(&:to_i)

      y -= 1 if m < 3

      DAY_WEEK[((y + y / 4 - y / 100 + y / 400 + t[m - 1] + d) % 7)]
    end
  end
end
