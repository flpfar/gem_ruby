# frozen_string_literal: true

RSpec.describe Challenges::String do
  describe ".missing_characters" do
    it { expect(Challenges::String.missing_characters("The quick brown fox jumps over the lazy dog")).to eq true }
    it { expect(Challenges::String.missing_characters("The quick brown fox jumps over the dog")).to eq false }
  end
end
