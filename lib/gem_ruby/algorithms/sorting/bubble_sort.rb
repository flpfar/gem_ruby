# frozen_string_literal: true

module Algorithms
  module Sorting
    def self.bubble_sort(array)
      last = array.length - 1

      loop do
        i = 0
        step = 0

        while i < last
          if array[i] > array[i + 1]
            array[i], array[i + 1] = array[i + 1], array[i]
            step += 1
          end
          i += 1
        end

        last -= 1

        return array if step.zero?
      end

      array
    end
  end
end
