require "rails_helper"

RSpec.describe MarketService do
  before(:each) do
    @market_keys = [:id, :type, :attributes, :relationships]
    @attributes_keys = [:name, :street, :city, :county, :state, :zip, :lat, :lon, :vendor_count]
  end




  describe ".get_all_markets" do
    it "returns all market data", :vcr do
    # faraday_response = MarketService.get_all_markets
    # expect(faraday_response).to be_a(Faraday::Response)
    # expect(faraday_response.status).to eq(200)
    # expect(faraday_response.body).to be_a(String)

      return_data = MarketService.get_all_markets
      expect(return_data).to be_a(Hash)
      expect(return_data[:data]).to be_present
      expect(return_data[:data]).to be_an(Array)

      market_data = return_data[:data]


      market_data.each do |market|
        expect(market).to be_a(Hash)
        expect(market.keys).to eq(@market_keys)
        expect(market[:id]).to be_a(String)
        expect(market[:type]).to be_a(String)
        expect(market[:attributes]).to be_a(Hash)
        expect(market[:attributes].keys).to eq(@attributes_keys)

        attributes = market[:attributes]
        expect(attributes[:name]).to be_a(String)
        expect(attributes[:state]).to be_a(String)
        expect(attributes[:vendor_count]).to be_an(Integer)

        def attributes(attribute_data)
          if attribute_data.nil?
            expect(attribute_data).to be_a(NilClass)
          else
            expect(attribute_data).to be_a(String)
          end
        end

        attributes(attributes[:city])
        attributes(attributes[:street])
        attributes(attributes[:county])
        attributes(attributes[:zip])
        attributes(attributes[:lat])
        attributes(attributes[:lon])
      end
    end
  end

  describe "get_market" do
    it "returns a market's information", :vcr do
      market_data = MarketService.get_market("322500")

      expect(market_data).to be_a(Hash)
      expect(market_data.keys).to eq([:data])

      market = market_data[:data]

      expect(market).to be_a(Hash)
      expect(market.keys).to eq(@market_keys)
      expect(market[:id]).to be_a(String)
      expect(market[:type]).to be_a(String)
      expect(market[:attributes]).to be_a(Hash)
      expect(market[:attributes].keys).to eq(@attributes_keys)
    end
  end
end
