# frozen_string_literal: true

RSpec.describe Algorithms::Sorting do
  describe ".bubble_sort" do
    it { expect(Algorithms::Sorting.bubble_sort([64, 34, 25, 12, 22, 11, 90])).to eq [11, 12, 22, 25, 34, 64, 90] }
    it {
      expect(Algorithms::Sorting.bubble_sort([90, 10, 36, 82, 67, 14, 5, 16, 39, 15]))
        .to eq [5, 10, 14, 15, 16, 36, 39, 67, 82, 90]
    }
  end

  describe ".counting_sort" do
    it { expect(Algorithms::Sorting.counting_sort([6, 3, 1, 2, 4, 8, 1, 2, 4])).to eq [1, 1, 2, 2, 3, 4, 4, 6, 8] }
    it { expect(Algorithms::Sorting.counting_sort([1, 4, 1, 2, 7, 5, 2, 0])).to eq [0, 1, 1, 2, 2, 4, 5, 7] }
  end
end
