# frozen_string_literal: true

RSpec.describe Algorithms::Greedy do
  describe ".maximize_array" do
    it { expect(Algorithms::Greedy.maximize_array([-2, 0, 5, -1, 2], 4)).to eq 10 }
    it { expect(Algorithms::Greedy.maximize_array([9, 8, 8, 5], 3)).to eq 20 }
  end

  describe ".minimum_product" do
    it { expect(Algorithms::Greedy.minimum_product([-1, -1, -2, 4, 3])).to eq(-24) }
    it { expect(Algorithms::Greedy.minimum_product([-1, 0])).to eq(-1) }
    it { expect(Algorithms::Greedy.minimum_product([0, 0, 0])).to eq 0 }
  end

  describe ".minimum_sum_product" do
    it { expect(Algorithms::Greedy.minimum_sum_product([1, 2, -3], [-2, 3, -5], 5)).to eq(-31) }
    it { expect(Algorithms::Greedy.minimum_sum_product([2, 3, 4, 5, 4], [3, 4, 2, 3, 2], 3)).to eq 25 }
  end

  describe ".minimum_sum_pairs" do
    it { expect(Algorithms::Greedy.minimum_sum_pairs([3, 4])).to eq 3 }
    it { expect(Algorithms::Greedy.minimum_sum_pairs([2, 4, 1, 3])).to eq 3 }
    it { expect(Algorithms::Greedy.minimum_sum_pairs([7, 3, 2, 5])).to eq 6 }
  end
end
