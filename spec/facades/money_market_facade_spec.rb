require "rails_helper"

RSpec.describe MoneyMarketFacade do
  before(:each) do
    @money_market_facade = MoneyMarketFacade.new("322474")
  end

  describe "#all_markets" do
    it "returns an array of Market objects", :vcr do
      market_objects = @money_market_facade.all_markets
      expect(market_objects).to be_an(Array)

      market_objects.each do |market|
        expect(market).to be_a(Market)
      end
    end
  end

  describe "#one_market" do
    it "returns a Market object from the Service data", :vcr do
      market = @money_market_facade.one_market

      expect(market).to be_a(Market)
    end
  end

  describe "#vendors" do
    it "turns a list of vendors into Vendor objects", :vcr do
      vendors = @money_market_facade.vendors

      expect(vendors).to be_an(Array)

      vendors.each do |vendor|
        expect(vendor).to be_a(Vendor)
      end
    end
  end
end
