# frozen_string_literal: true

RSpec.describe Challenges::Strings do
  describe ".missing_characters" do
    it { expect(Challenges::Strings.missing_characters("The quick brown fox jumps over the lazy dog")).to eq true }
    it { expect(Challenges::Strings.missing_characters("The quick brown fox jumps over the dog")).to eq false }
  end

  describe ".count" do
    it {
      expect(Challenges::Strings.count("#GeeKs01fOr@gEEks07")).to eq("Upper case letters: 5 "\
                                                                    "Lower case letters: 8 "\
                                                                    "Numbers: 4 "\
                                                                    "Special characters: 2")
    }
    it {
      expect(Challenges::Strings.count("*GeEkS4GeEkS*")).to eq("Upper case letters: 6 "\
                                                              "Lower case letters: 4 "\
                                                              "Numbers: 1 "\
                                                              "Special characters: 2")
    }
  end

  describe ".common_characters" do
    it { expect(Challenges::Strings.common_characters("apple", "orange")).to eq %w[a e] }
    it {
      expect(Challenges::Strings.common_characters("geeksforgeeks", "gemkstones", "acknowledges", "aguelikes"))
        .to eq %w[e g k s]
    }
  end

  describe ".group_words" do
    it do
      words = %w[may student students dog
                 studentssess god cat act
                 tab bat flow wolf lambs
                 amy yam balms looped
                 poodle]

      result = [
        %w[may amy yam],
        %w[student students studentssess],
        %w[dog god],
        %w[cat act],
        %w[tab bat],
        %w[flow wolf],
        %w[lambs balms],
        %w[looped poodle]
      ]
      expect(Challenges::Strings.group_words(words)).to eq result
    end
  end
end
