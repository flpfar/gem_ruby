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

  describe ".sum_minute" do
    it { expect(Challenges::Dates.sum_minute("12:43", 21)).to eq "13:04" }
    it { expect(Challenges::Dates.sum_minute("20:39", 534)).to eq "05:33" }
  end

  describe ".calculate_age" do
    it { expect(Challenges::Dates.calculate_age("07/09/1996", "07/12/2017")).to eq({ years: 21, months: 3, days: 0 }) }
    it { expect(Challenges::Dates.calculate_age("16/12/2009", "07/12/2017")).to eq({ years: 7, months: 11, days: 22 }) }
  end
end
