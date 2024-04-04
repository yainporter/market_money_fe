class VendorFacade
  def initialize(vendor_id = nil)
    @vendor_id = vendor_id
  end

  def one_vendor
    Vendor.new(VendorService.get_vendor(@vendor_id)[:data])
  end

\
end
