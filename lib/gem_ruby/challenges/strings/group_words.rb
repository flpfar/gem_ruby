# frozen_string_literal: true

module Challenges
  module Strings
    def self.group_words(words)
      words_hash = {}
      result = []

      words.each do |word|
        letters_hash = {}

        word.each_char { |char| letters_hash[char] = true }

        word_letters = letters_hash.keys.sort.join("")

        words_hash[word_letters] = [] unless words_hash[word_letters]
        words_hash[word_letters] << word
      end

      words_hash.values.each { |common_words| result << common_words }

      result
    end
  end
end
