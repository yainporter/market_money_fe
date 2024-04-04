class MarketFacade
  def initialize(market_id = nil)
    @service = MarketService.new
    @market_id = market_id
  end

  def all_markets
    MarketService.get_all_markets[:data].map do |data|
      Market.new(data)
    end
  end

  def one_market
    market_data = MarketService.get_market(@market_id)[:data]
    Market.new(market_data)
  end
end
