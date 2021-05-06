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
end
