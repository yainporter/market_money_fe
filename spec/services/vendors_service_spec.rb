require "rails_helper"

RSpec.describe VendorService do
  before(:each) do
    @data_keys = [:id, :type, :attributes]
    @attributes_keys = [:name, :description, :contact_name, :contact_phone, :credit_accepted]
  end

  describe ".get_vendor" do
    it "returns data for a Vendor", :vcr do
      vendor = VendorService.get_vendor("55823")

      expect(vendor).to be_a(Hash)
      expect(vendor[:data]).to be_a(Hash)
      expect(vendor[:data].keys).to eq(@data_keys)
      expect(vendor[:data][:attributes]).to be_a(Hash)
      expect(vendor[:data][:attributes].keys).to eq(@attributes_keys)
    end
  end
end
