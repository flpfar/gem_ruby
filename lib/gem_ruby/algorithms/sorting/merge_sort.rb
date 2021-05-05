# frozen_string_literal: true

module Algorithms
  module Sorting
    def self.merge_sort(array)
      return array if array.length <= 1

      middle = (array.length / 2).floor
      left_array = merge_sort(array[0...middle])
      right_array = merge_sort(array[middle...array.length])
      merge(left_array, right_array)
    end

    private_class_method def self.merge(array1, array2)
      sorted = []
      until array1.empty? || array2.empty?
        sorted << if array1.first <= array2.first
                    array1.shift
                  else
                    array2.shift
                  end
      end
      sorted.concat(array1).concat(array2)
    end
  end
end
