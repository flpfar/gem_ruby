# frozen_string_literal: true

module Algorithms
  module Greedy
    def self.minimum_sum_product(arr1, arr2, changes)
      diff = 0
      result = 0
      temp = 0

      arr1.size.times do |i|
        current_product = arr1[i] * arr2[i]
        result += current_product

        if current_product.negative? && arr2[i].negative?
          temp = (arr1[i] + 2 * changes) * arr2[i]
        elsif current_product.negative? && arr1[i].negative?
          temp = (arr1[i] - 2 * changes) * arr2[i]
        elsif current_product.positive? && arr1[i].negative?
          temp = (arr1[i] + 2 * changes) * arr2[i]
        elsif current_product.positive? && arr1[i].positive?
          temp = (arr1[i] - 2 * changes) * arr2[i]
        end

        current_diff = (current_product - temp).abs

        diff = current_diff if current_diff > diff
      end

      result - diff
    end
  end
end
