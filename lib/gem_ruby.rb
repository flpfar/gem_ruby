# frozen_string_literal: true

require_relative "gem_ruby/version"

require_relative "gem_ruby/algorithms/searching/linear_search.rb"
require_relative "gem_ruby/algorithms/searching/binary_search.rb"
require_relative "gem_ruby/algorithms/searching/jump_search.rb"

require_relative "gem_ruby/algorithms/sorting/bubble_sort.rb"

module GemRuby
  class Error < StandardError; end
  # Your code goes here...
end
