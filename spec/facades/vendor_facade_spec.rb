require "rails_helper"

RSpec.describe VendorFacade do
  before(:each) do
    @vendor_facade = VendorFacade.new("55823")
  end

  # describe "#one_vendor" do
  #   it "creates a Vendor", :vcr do
  #     vendor = @vendor_facade.one_vendor

  #     expect(vendor).to be_a(Vendor)
  #   end
  # end

  describe "#vendors" do
    it "turns a list of vendors into Vendor objects", :vcr do
      vendors = @vendor_facade.vendors("322474")

      expect(vendors).to be_an(Array)

      vendors.each do |vendor|
        expect(vendor).to be_a(Vendor)
      end
    end
  end
end
