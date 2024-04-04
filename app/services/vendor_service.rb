class VendorService
  extend Serviceable

  def self.get_vendor(id)
    get_url("/api/v0/vendors/#{id}")
  end
end
