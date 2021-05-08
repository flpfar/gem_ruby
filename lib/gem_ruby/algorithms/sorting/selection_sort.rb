# frozen_string_literal: true

module Algorithms
  module Sorting
    def self.selection_sort(array)
      (array.size - 1).times do |i|
        min = array[i]
        min_index = i
        ((i + 1)...array.size).each do |j|
          if array[j] < min
            min = array[j]
            min_index = j
          end
        end

        array[i], array[min_index] = array[min_index], array[i]
      end

      array
    end
  end
end
