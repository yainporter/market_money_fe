require "rails_helper"

RSpec.describe VendorService do
  before(:each) do

  end

  describe ".conn" do
    it "connects to the backend api", :vcr do
      connection = VendorService.conn
    end
  end

  describe ".get_url" do
    it "makes a request and parses the data from get requests into a hash", :vcr do
      market_data = MarketService.get_url("/api/v0/markets")

      expect(market_data).to be_a(Hash)
    end
  end
end
