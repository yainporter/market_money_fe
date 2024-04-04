class VendorFacade
  def initialize(vendor_id = nil)
    @vendor_id = vendor_id
  end

  # def one_vendor
  #   vendor_data = VendorService.get_vendor(@vendor_id)[:data]
  #   Vendor.new(vendor_data)
  # end

  def vendors(market_id)
    vendors_data = VendorService.get_all_vendors(market_id)[:data]

    vendors_data.map do |vendor|
      Vendor.new(vendor)
    end
  end
end
