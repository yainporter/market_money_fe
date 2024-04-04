class MoneyMarketFacade
  def initialize(market_id = nil)
    @service = MoneyMarketService.new
    @market_id = market_id
  end

  def all_markets
    MoneyMarketService.get_all_markets[:data].map do |data|
      Market.new(data)
    end
  end

  def one_market
    market_data = MoneyMarketService.get_market(@market_id)[:data]
    Market.new(market_data)
  end

  def vendors
    vendors_data = MoneyMarketService.get_all_vendors(@market_id)[:data]

    vendors_data.map do |vendor|
      Vendor.new(vendor)
    end
  end
end
