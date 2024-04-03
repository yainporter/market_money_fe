class MarketFacade
  def initialize
    @service = MarketService.new
  end

  def all_markets
    MarketService.get_all_markets[:data].map do |data|
      Market.new(data)
    end
  end
end
