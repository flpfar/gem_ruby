# frozen_string_literal: true

module Challenges
  module Arrays
    def self.find_three(array)
      first = second = third = array.first

      array.each do |item|
        if item > first
          third = second
          second = first
          first = item
        elsif item > second
          third = second
          second = item
        elsif item > third
          third = item
        end
      end

      [first, second, third]
    end
  end
end
