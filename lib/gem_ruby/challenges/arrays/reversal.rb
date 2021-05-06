# frozen_string_literal: true

module Challenges
  module Arrays
    def self.reversal(array, rotation)
      result = []
      i = array.length - rotation

      array.length.times do
        result << array[i]

        i = (i + 1) % array.length
      end

      result
    end
  end
end
