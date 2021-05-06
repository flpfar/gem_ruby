# frozen_string_literal: true

RSpec.describe Challenges::Dates do
  describe ".find_future" do
    it do
      dates = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
      queries = ["23/3/4345", "12/3/2"]

      expect(Challenges::Dates.find_future(dates, queries)).to eq ["23/5/56645", "4/12/233"]
    end
    it do
      dates = ["22/4/1233", "4/12/233", "1/3/633", "23/5/56645"]
      queries = ["4/4/34234234"]

      expect(Challenges::Dates.find_future(dates, queries)).to eq [-1]
    end
  end
end
