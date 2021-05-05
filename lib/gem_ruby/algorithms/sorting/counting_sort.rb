# frozen_string_literal: true

module Algorithms
  module Sorting
    def self.counting_sort(array)
      counting_array = create_counting_array(array)

      sorted = Array.new(array.length)

      array.each do |item|
        sorted[counting_array[item] - 1] = item
        counting_array[item] -= 1
      end

      sorted
    end

    private_class_method def self.create_counting_array(array)
      counting_array = Array.new(array.max + 1, 0)
      array.each { |item| counting_array[item] += 1 }

      (1..(counting_array.length - 1)).each do |i|
        counting_array[i] += counting_array[i - 1]
      end

      counting_array
    end
  end
end
