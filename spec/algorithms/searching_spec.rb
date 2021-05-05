# frozen_string_literal: true

RSpec.describe Algorithms::Searching do
  describe ".linear_search" do
    it { expect(Algorithms::Searching.linear_search([1, 2, 3], 3)).to eq 2 }
    it { expect(Algorithms::Searching.linear_search([10, 20, 80, 30, 60, 50, 110, 100, 130, 170], 110)).to eq 6 }
    it { expect(Algorithms::Searching.linear_search([10, 20, 80, 30, 60, 50, 110, 100, 130, 170], 175)).to eq(-1) }
    it { expect(Algorithms::Searching.linear_search([10, 20, 80, 30, 60, 50, 110, 100, 130, 170], 170)).to eq 9 }
    it { expect(Algorithms::Searching.linear_search([10, 20, 80, 30, 60, 50, 110, 100, 130, 170], 10)).to eq 0 }
  end
end
