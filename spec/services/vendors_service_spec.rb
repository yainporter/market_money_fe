require "rails_helper"

RSpec.describe VendorService do
  before(:each) do
    @data_keys = [:id, :type, :attributes]
    @attributes_keys = [:name, :description, :contact_name, :contact_phone, :credit_accepted]
  end

  # describe ".get_vendor" do
  #   it "returns data for a Vendor", :vcr do
  #     vendor = VendorService.get_vendor("55823")

  #     expect(vendor).to be_a(Hash)
  #     expect(vendor[:data]).to be_a(Hash)
  #     expect(vendor[:data].keys).to eq(@data_keys)
  #     expect(vendor[:data][:attributes]).to be_a(Hash)
  #     expect(vendor[:data][:attributes].keys).to eq(@attributes_keys)
  #   end
  # end

  describe ".get_all_vendors" do
    it "returns data for a list of Vendors that belong to a Market", :vcr do
      vendors = VendorService.get_all_vendors("322458")

      expect(vendors).to be_a(Hash)
      expect(vendors[:data]).to be_an(Array)
      expect(vendors[:data].first).to be_a(Hash)

      vendors[:data].each do |vendor|
        expect(vendor.keys).to eq(@data_keys)
        expect(vendor[:attributes].keys).to eq(@attributes_keys)
      end
    end
  end
end
