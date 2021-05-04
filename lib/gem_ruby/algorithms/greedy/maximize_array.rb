# frozen_string_literal: true

def maximize_array(array, times_to_invert)
  times_to_invert.times do
    min, min_index = array.each_with_index.min
    break if min.zero?

    array[min_index] = -array[min_index]
  end

  array.sum
end

# Test cases

# puts maximize_array([-2, 0, 5, -1, 2], 4)
# puts maximize_array([9, 8, 8, 5], 3)
