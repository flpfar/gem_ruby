# GemRuby

> Gem with Algorithms and Challenges solved in Ruby

This gem was built as an assignment and focuses on the development and practice of the following topics:
- Ruby language
- Algorithms
- Programming challenges
- Testing
- Gem setup
- Project management
- Time management
- Communication
- Teamwork

This project is part of a mentorship program from [Desenvolvendo Me](https://www.youtube.com/channel/UCp98bXHSc01w8fBfkkgHB1Q), by [Marco Castro](https://github.com/marcodotcastro).

## Algorithms

* Searching algorithms
  * Linear Search ([Description](https://www.geeksforgeeks.org/linear-search/) | [Code](/lib/gem_ruby/algorithms/searching/linear_search.rb))
  * Binary Search ([Description](https://www.geeksforgeeks.org/binary-search/) | [Code](/lib/gem_ruby/algorithms/searching/binary_search.rb))
  * Jump Search ([Description](https://www.geeksforgeeks.org/jump-search/) | [Code](/lib/gem_ruby/algorithms/searching/jump_search.rb))
  * [Extra] Find Missing Number ([Description](https://www.geeksforgeeks.org/find-the-missing-number/) | [Code](/lib/gem_ruby/algorithms/searching/find_missing_number.rb))
* Sorting algorithms
  * Bubble Sort ([Description](https://www.geeksforgeeks.org/bubble-sort/) | [Code](/lib/gem_ruby/algorithms/sorting/bubble_sort.rb))
  * Counting Sort ([Description](https://www.geeksforgeeks.org/counting-sort/) | [Code](/lib/gem_ruby/algorithms/sorting/counting_sort.rb))
  * Merge Sort ([Description](https://www.geeksforgeeks.org/merge-sort/) | [Code](/lib/gem_ruby/algorithms/sorting/merge_sort.rb))
  * [Extra] Selection Sort ([Description](https://www.geeksforgeeks.org/selection-sort/) | [Code](/lib/gem_ruby/algorithms/sorting/selection_sort.rb))
* Greedy algorithms
  * Maximize Array ([Description](https://www.geeksforgeeks.org/maximize-array-sun-after-k-negation-operations/) | [Code](/lib/gem_ruby/algorithms/greedy/maximize_array.rb))
  * Minimum Product ([Description](https://www.geeksforgeeks.org/minimum-product-subset-array/) | [Code](/lib/gem_ruby/algorithms/greedy/minimum_product.rb))
  * Minimum Sum Product ([Description](https://www.geeksforgeeks.org/minimum-sum-product-two-arrays/) | [Code](/lib/gem_ruby/algorithms/greedy/minimum_sum_product.rb))
  * [Extra] Minimum Sum Pairs ([Description](https://www.geeksforgeeks.org/minimum-sum-choosing-minimum-pairs-array/) | [Code](/lib/gem_ruby/algorithms/greedy/minimum_sum_pairs.rb))

## Challenges

* String
  * Missing characters ([Description](https://www.geeksforgeeks.org/pangram-checking/) | [Code](/lib/gem_ruby/challenges/strings/missing_characters.rb))
  * Count ([Description](https://www.geeksforgeeks.org/count-uppercase-lowercase-special-character-numeric-values/) | [Code](/lib/gem_ruby/challenges/strings/count.rb))
  * [Extra] Common Characters ([Description](https://www.geeksforgeeks.org/common-characters-n-strings/) | [Code](/lib/gem_ruby/challenges/strings/common_characters.rb))
  * [Extra] Group Words ([Description](https://www.geeksforgeeks.org/print-words-together-set-characters/) | [Code](/lib/gem_ruby/challenges/strings/group_words.rb))
* Array
  * Find Three ([Description](https://www.geeksforgeeks.org/find-the-largest-three-elements-in-an-array/) | [Code](/lib/gem_ruby/challenges/arrays/find_three.rb))
  * Reversal ([Description](https://www.geeksforgeeks.org/reversal-algorithm-right-rotation-array/) | [Code](/lib/gem_ruby/challenges/arrays/reversal.rb))
  * [Extra] Reorder Index ([Description](https://www.geeksforgeeks.org/reorder-a-array-according-to-given-indexes/) | [Code](/lib/gem_ruby/challenges/arrays/reorder_index.rb))
  * [Extra] Positive and Negative ([Description](https://www.geeksforgeeks.org/positive-elements-at-even-and-negative-at-odd-positions-relative-order-not-maintained/) | [Code](/lib/gem_ruby/challenges/arrays/positive_negative.rb))
* Date
  * Find Future ([Description](https://www.geeksforgeeks.org/queries-to-find-the-future-closest-date/) | [Code](/lib/gem_ruby/challenges/dates/find_future.rb))
  * Sum Minute ([Description](https://www.geeksforgeeks.org/program-to-find-the-time-after-k-minutes-from-given-time/) | [Code](/lib/gem_ruby/challenges/dates/sum_minute.rb))
  * [Extra] Calculate Age ([Description](https://www.geeksforgeeks.org/program-calculate-age/) | [Code](/lib/gem_ruby/challenges/dates/calculate_age.rb))

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gem_ruby'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install gem_ruby

## Usage

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/flpfar/gem_ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
