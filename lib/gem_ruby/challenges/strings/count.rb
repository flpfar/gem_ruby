# frozen_string_literal: true

module Challenges
  module Strings
    ASCII_RANGES = {
      upper: 65..90,
      lower: 97..122,
      number: 48..57
    }.freeze

    def self.count(string)
      result = {
        upper: 0,
        lower: 0,
        number: 0,
        special: 0
      }

      string.each_byte do |byte|
        case byte
        when ASCII_RANGES[:upper]
          result[:upper] += 1
        when ASCII_RANGES[:lower]
          result[:lower] += 1
        when ASCII_RANGES[:number]
          result[:number] += 1
        else
          result[:special] += 1
        end
      end

      "Upper case letters: #{result[:upper]} "\
      "Lower case letters: #{result[:lower]} "\
      "Numbers: #{result[:number]} "\
      "Special characters: #{result[:special]}"
    end
  end
end
