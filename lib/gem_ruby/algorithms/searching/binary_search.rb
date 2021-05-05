# frozen_string_literal: true

module Algorithms
  module Searching
    def self.binary_search(elements, element_to_find)
      first = 0
      last = elements.length - 1
      mid = last / 2

      loop do
        return mid if elements[mid] == element_to_find

        break if first == last

        if element_to_find < elements[mid]
          last = mid - 1
        else
          first = mid + 1
        end

        mid = (first + last) / 2
      end

      -1
    end
  end
end
