# frozen_string_literal: true

module Challenges
  module String
    def self.missing_characters(string)
      alph_array = Array.new(26, false)

      string.downcase.each_byte do |char|
        alph_array[char - "a".ord] = true if char != " ".ord
      end

      alph_array.all?(true)
    end
  end
end
