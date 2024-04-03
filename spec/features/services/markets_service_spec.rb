require "rails_helper"

RSpec.describe MarketService do
  before(:each) do
    @markets_service = MarketService.new
  end

  describe ".conn" do
    it "connects to the backend api" do
      expect(MarketService.conn).to be_a(Faraday::Connection)
      expect(MarketService.conn.port).to eq(3000)
      expect(MarketService.conn.url_prefix).to be_a(URI::HTTP)
      expect(MarketService.conn.url_prefix.to_s).to eq("http://localhost:3000/")
    end
  end

  describe ".get_url" do
    it "makes a request and parses the data from get requests into a hash" do
      market_data = MarketService.get_url("/api/v0/markets")

      expect(market_data).to be_a(Hash)
    end
  end


  describe ".get_all_markets" do
    it "returns all market data" do
    # faraday_response = MarketService.get_all_markets
    # expect(faraday_response).to be_a(Faraday::Response)
    # expect(faraday_response.status).to eq(200)
    # expect(faraday_response.body).to be_a(String)

      return_data = MarketService.get_all_markets
      expect(return_data).to be_a(Hash)
      expect(return_data[:data]).to be_present
      expect(return_data[:data]).to be_an(Array)

      market_data = return_data[:data]
      market_keys = [:id, :type, :attributes]
      attributes_keys = [:name, :street, :city, :county, :state, :zip, :lat, :lon, :vendor_count]

      market_data.each do |market|
        expect(market).to be_a(Hash)
        expect(market.keys).to eq(market_keys)
        expect(market[:id]).to be_a(String)
        expect(market[:type]).to be_a(String)
        expect(market[:attributes]).to be_a(Hash)
        expect(market[:attributes].keys).to eq(attributes_keys)

        attributes = market[:attributes]
        expect(attributes[:name]).to be_a(String)
        expect(attributes[:street]).to be_a(String)
        expect(attributes[:city]).to be_a(String)
        expect(attributes[:county]).to be_a(String)
        expect(attributes[:state]).to be_a(String)
        expect(attributes[:zip]).to be_a(String) || expect(attributes[:zip]).to be_a(NilClass)
        expect(attributes[:lat]).to be_a(String)
        expect(attributes[:lon]).to be_a(String)
        expect(attributes[:vendor_count]).to be_an(Integer)
      end
    end
  end
end
