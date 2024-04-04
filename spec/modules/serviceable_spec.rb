require "rails_helper"

RSpec.describe Serviceable do
  before(:each) do
    @market = MarketService.new
    @market.extend(Serviceable)
  end

  describe ".conn" do
    it "connects to the backend api", :vcr do
      conn = @market.conn
      expect(conn).to be_a(Faraday::Connection)
      expect(conn.port).to eq(3000)
      expect(conn.url_prefix).to be_a(URI::HTTP)
      expect(conn.url_prefix.to_s).to eq("http://localhost:3000/")
    end
  end

  describe ".get_url" do
    it "makes a request and parses the data from get requests into a hash", :vcr do
      market_data = @market.get_url("/api/v0/markets")

      expect(market_data).to be_a(Hash)
    end
  end
end
