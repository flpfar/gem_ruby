# frozen_string_literal: true

RSpec.describe Algorithms::Greedy do
  describe ".maximize_array" do
    it { expect(Algorithms::Greedy.maximize_array([-2, 0, 5, -1, 2], 4)).to eq 10 }
    it { expect(Algorithms::Greedy.maximize_array([9, 8, 8, 5], 3)).to eq 20 }
  end
end
