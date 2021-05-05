# frozen_string_literal: true

module Algorithms
  module Searching
    def self.linear_search(list_of_elements, element_to_find)
      index = 0
      while index < list_of_elements.length
        return index if list_of_elements[index] == element_to_find

        index += 1
      end
      -1
    end
  end
end
