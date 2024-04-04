class MoneyMarketService

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_vendors(market_id)
    get_url("api/v0/markets/#{market_id}/vendors")
  end

  def self.get_all_markets
    get_url("/api/v0/markets")
  end

  def self.get_market(id)
    get_url("/api/v0/markets/#{id}")
  end

  def self.get_vendor(vendor_id)
    get_url("api/v0/vendors/#{vendor_id}")
  end
end
