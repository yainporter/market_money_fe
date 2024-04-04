require "rails_helper"

RSpec.describe Vendor do
  before(:each) do
   @vendor_data = {
    "id": "55823",
    "type": "vendor",
    "attributes": {
        "name": "The Charcuterie Corner",
        "description": "Vendor selling a variety of artisanal cured meats and sausages.",
        "contact_name": "Claudie Langworth III",
        "contact_phone": "1-147-179-9747",
        "credit_accepted": false
      }
    }
  end

  describe "it exists" do
    it "takes in a hash parameter and filters it to attributes" do
      vendor = Vendor.new(@vendor_data)

      expect(vendor).to be_a(Vendor)
      expect(vendor.id).to be_a(String)
      expect(vendor.name).to be_a(String)
      expect(vendor.description).to be_a(String)
      expect(vendor.contact_name).to be_a(String)
      expect(vendor.contact_phone).to be_a(String)
      expect(vendor.credit_accepted).to eq(false)
    end
  end
end
