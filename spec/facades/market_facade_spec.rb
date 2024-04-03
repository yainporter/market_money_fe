require "rails_helper"

RSpec.describe MarketFacade do
  before(:each) do
    @market_facade = MarketFacade.new
  end

  describe "#all_markets" do
    it "returns an array of Market objects", :vcr do
      market_objects = @market_facade.all_markets
      expect(market_objects).to be_an(Array)

      market_objects.each do |market|
        expect(market).to be_a(Market)
      end
    end
  end
end
