# frozen_string_literal: true

RSpec.describe Challenges::Arrays do
  describe ".find_three" do
    it { expect(Challenges::Arrays.find_three([10, 4, 3, 50, 23, 90])).to eq [90, 50, 23] }
    it { expect(Challenges::Arrays.find_three([12, 13, 1, 10, 34, 1])).to eq [34, 13, 12] }
  end

  describe ".reversal" do
    it { expect(Challenges::Arrays.reversal([1, 2, 3, 4, 5, 6, 7, 8, 9], 3)).to eq [7, 8, 9, 1, 2, 3, 4, 5, 6] }
    it { expect(Challenges::Arrays.reversal([121, 232, 33, 43, 5], 2)).to eq [43, 5, 121, 232, 33] }
  end
end
