# frozen_string_literal: true

RSpec.describe Algorithms::Searching do
  describe ".linear_search" do
    it { expect(Algorithms::Searching.linear_search([1, 2, 3], 3)).to eq 2 }
    it { expect(Algorithms::Searching.linear_search([10, 20, 80, 30, 60, 50, 110, 100, 130, 170], 110)).to eq 6 }
    it { expect(Algorithms::Searching.linear_search([10, 20, 80, 30, 60, 50, 110, 100, 130, 170], 175)).to eq(-1) }
    it { expect(Algorithms::Searching.linear_search([10, 20, 80, 30, 60, 50, 110, 100, 130, 170], 170)).to eq 9 }
    it { expect(Algorithms::Searching.linear_search([10, 20, 80, 30, 60, 50, 110, 100, 130, 170], 10)).to eq 0 }
  end

  describe ".binary_search" do
    it { expect(Algorithms::Searching.binary_search([1, 2, 3], 3)).to eq 2 }
    it { expect(Algorithms::Searching.binary_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 110)).to eq 7 }
    it { expect(Algorithms::Searching.binary_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 175)).to eq(-1) }
    it { expect(Algorithms::Searching.binary_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 170)).to eq 9 }
    it { expect(Algorithms::Searching.binary_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 10)).to eq 0 }
    it { expect(Algorithms::Searching.binary_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 90)).to eq(-1) }
  end

  describe ".jump_search" do
    it { expect(Algorithms::Searching.jump_search([1, 2, 3], 3)).to eq 2 }
    it { expect(Algorithms::Searching.jump_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 110)).to eq 7 }
    it { expect(Algorithms::Searching.jump_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 175)).to eq(-1) }
    it { expect(Algorithms::Searching.jump_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 170)).to eq 9 }
    it { expect(Algorithms::Searching.jump_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 10)).to eq 0 }
    it { expect(Algorithms::Searching.jump_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 90)).to eq(-1) }
  end

  describe ".find_missing_number" do
    it { expect(Algorithms::Searching.find_missing_number([1, 2, 4, 6, 3, 7, 8])).to eq 5 }
    it { expect(Algorithms::Searching.find_missing_number([1, 2, 3, 5])).to eq 4 }
    it { expect(Algorithms::Searching.find_missing_number([3, 2, 4, 6, 1, 5, 9, 8])).to eq 7 }
    it { expect(Algorithms::Searching.find_missing_number([9, 8, 7, 5, 4, 3, 2, 1])).to eq 6 }
  end
end
