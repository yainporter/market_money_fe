require "rails_helper"

RSpec.describe VendorFacade do
  before(:each) do
    @vendor_facade = VendorFacade.new("55823")
  end

  describe "#one_vendor" do
    it "creates a Vendor", :vcr do
      vendor = @vendor_facade.one_vendor

      expect(vendor).to be_a(Vendor)
    end
  end
end
