# frozen_string_literal: true

module Algorithms
  module Searching
    def self.jump_search(elements, element_to_find)
      elements_length = elements.length
      step = Math.sqrt(elements_length)

      prev = 0

      while elements[[step, elements_length].min.to_i - 1] < element_to_find
        prev = step
        step += Math.sqrt(elements_length)

        return -1 if prev >= elements_length
      end

      while elements[prev.to_i] < element_to_find
        prev += 1

        return -1 if prev == [step, elements_length].min
      end

      return prev.to_i if elements[prev.to_i] == element_to_find

      -1
    end
  end
end
