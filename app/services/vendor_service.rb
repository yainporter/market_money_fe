class VendorService
  extend Serviceable

  # def self.get_vendor(id)
  #   get_url("/api/v0/vendors/#{id}")
  # end

  def self.get_all_vendors(market_id)
    get_url("api/v0/markets/#{market_id}/vendors")
  end
end
