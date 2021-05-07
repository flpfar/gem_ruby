# frozen_string_literal: true

module Challenges
  module Dates
    def self.calculate_age(birth_date, current_date)
      birth_day, birth_month, birth_year = birth_date.split("/").map(&:to_i)
      current_day, current_month, current_year = current_date.split("/").map(&:to_i)
      days_in_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

      if birth_day > current_day
        current_month -= 1
        current_day += days_in_months[birth_month - 1]
      end

      if birth_month > current_month
        current_year -= 1
        current_month += 12
      end

      {
        years: current_year - birth_year,
        months: current_month - birth_month,
        days: current_day - birth_day
      }
    end
  end
end
