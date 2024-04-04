require "rails_helper"

RSpec.describe "Vendor Show Page", type: :feature do
  before(:each) do
    visit vendor_path("55297")
  end

  describe "User Story 3 - Vendor Show Page" do
    it "displays Vendor information", :vcr do
      expect(page).to have_css("h1", text: "Orange County Olive Oil")
      expect(page).to have_content("Contact Info")
      expect(page).to have_content("Name: Syble Hamill")
      expect(page).to have_content("Phone: 1-276-593-3530")
      expect(page).to have_content("Credit Accepted? NO")
      expect(page).to have_content("Description: Handcrafted olive oil made from locally grown olives")
    end
  end

end
