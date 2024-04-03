require "rails_helper"

RSpec.describe Market do
  before(:each) do

  end

  describe "Existence" do
    it "takes in a hash argument for attributes" do
      data = {
        data: [
          {
            id: "1234",
            type: "market",
            attributes: {
              name: "Farmers Market",
              street: "123 Street",
              city: "City",
              county: "Pinal",
              state: "Arizona",
              zip: "12345",
              lat: "32.343",
              lon: "-50.123",
              vendor_count: 1
            }
          }
        ]
      }

      market = Market.new(data)

      expect(market).to be_a(Market)
      expect(market.id).to eq("1234")
      expect(market.name).to eq("Farmers Market")
      expect(market.street).to eq("123 Street")
      expect(market.city).to eq("City")
      expect(market.county).to eq("Pinal")
      expect(market.state).to eq("Arizona")
      expect(market.zip).to eq("12345")
      expect(market.lat).to eq("32.343")
      expect(market.lon).to eq("-50.123")
      expect(market.vendor_count).to eq(1)
    end
  end
end
