class MarketService
  extend Serviceable

  def self.get_all_markets
    get_url("/api/v0/markets")
  end

  def self.get_market(id)
    get_url("/api/v0/markets/#{id}")
  end
end
