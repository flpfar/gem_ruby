# frozen_string_literal: true

module Algorithms
  module Greedy
    def self.maximize_array(array, times_to_invert)
      times_to_invert.times do
        min, min_index = array.each_with_index.min
        break if min.zero?

        array[min_index] = -array[min_index]
      end

      array.sum
    end
  end
end
