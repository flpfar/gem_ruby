# frozen_string_literal: true

module Algorithms
  module Greedy
    def self.minimum_sum_pairs(array)
      min_value = array.min

      min_value * (array.size - 1)
    end
  end
end
