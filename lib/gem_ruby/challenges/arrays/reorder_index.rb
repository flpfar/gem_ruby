# frozen_string_literal: true

module Challenges
  module Arrays
    def self.reorder_index(array, indexes)
      result = Array.new(array.size)

      indexes.each_with_index do |index, i|
        result[index] = array[i]

        indexes[i] = i
      end

      [result, indexes]
    end
  end
end
