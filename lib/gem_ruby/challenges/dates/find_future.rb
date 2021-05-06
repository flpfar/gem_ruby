# frozen_string_literal: true

module Challenges
  module Dates
    def self.find_future(dates, queries)
      sorted_dates = dates.sort { |a, b| compare_dates(a, b) }
      result = []

      queries.each do |query|
        i = 0
        i += 1 while i < dates.size && compare_dates(query, sorted_dates[i]) == 1

        result << (i < dates.size ? sorted_dates[i] : -1)
      end

      result
    end

    private_class_method def self.compare_dates(date1, date2)
      day1, month1, year1 = date1.split("/").map(&:to_i)
      day2, month2, year2 = date2.split("/").map(&:to_i)

      return year1 <=> year2 if (year1 <=> year2) != 0

      return month1 <=> month2 if (month1 <=> month2) != 0

      day1 <=> day2
    end
  end
end
