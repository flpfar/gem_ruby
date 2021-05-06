# frozen_string_literal: true

module Algorithms
  module Greedy
    def self.minimum_product(array)
      negative_count = array.count(&:negative?)
      zero_count = array.count(0)

      if negative_count.zero?
        return zero_count.positive? ? 0 : array.min
      end

      product = array.reduce(1) { |prod, n| n != 0 ? prod * n : prod }

      negative_count.even? ? product / array.min : product
    end
  end
end
