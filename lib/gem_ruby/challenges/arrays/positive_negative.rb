# frozen_string_literal: true

module Challenges
  module Arrays
    def self.positive_negative(array)
      pos_index = 0
      neg_index = 1

      loop do
        pos_index += 2 while pos_index < array.size && array[pos_index] >= 0
        neg_index += 2 while neg_index < array.size && array[neg_index].negative?

        break unless pos_index < array.size && neg_index < array.size

        array[pos_index], array[neg_index] = array[neg_index], array[pos_index]
      end

      array
    end
  end
end
