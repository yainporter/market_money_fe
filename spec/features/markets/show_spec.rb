require "rails_helper"

RSpec.describe "Market Show Page", type: :feature do
  before(:each) do
    visit "/markets/322500"
  end

  describe "User Story 2 - Display" do
    it "has market info and link to the Vendor show page", :vcr do
      expect(page).to have_link("Rocky Mountain Oyster Company")
      expect(all("a").count).to eq(6)

      click_link("Rocky Mountain Oyster Company")
      expect(page.current_path).to eq("/vendors/55273")
    end
  end
end
