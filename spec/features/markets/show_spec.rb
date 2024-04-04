require "rails_helper"

RSpec.describe "Market Show Page", type: :feature do
  before(:each) do
    visit "/markets/322500"
  end

  describe "User Story 2 - Display" do
    it "has market info and link to the Vendor show page", :vcr do
      expect(page).to have_link("")
    end
  end
end
