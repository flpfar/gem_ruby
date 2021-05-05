# frozen_string_literal: true

RSpec.describe Challenges::String do
  describe ".missing_characters" do
    it { expect(Challenges::String.missing_characters("The quick brown fox jumps over the lazy dog")).to eq true }
    it { expect(Challenges::String.missing_characters("The quick brown fox jumps over the dog")).to eq false }
  end

  describe ".count" do
    it {
      expect(Challenges::String.count("#GeeKs01fOr@gEEks07")).to eq("Upper case letters: 5 "\
                                                                    "Lower case letters: 8 "\
                                                                    "Numbers: 4 "\
                                                                    "Special characters: 2")
    }
    it {
      expect(Challenges::String.count("*GeEkS4GeEkS*")).to eq("Upper case letters: 6 "\
                                                              "Lower case letters: 4 "\
                                                              "Numbers: 1 "\
                                                              "Special characters: 2")
    }
  end
end
