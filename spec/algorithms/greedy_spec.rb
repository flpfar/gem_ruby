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
end
