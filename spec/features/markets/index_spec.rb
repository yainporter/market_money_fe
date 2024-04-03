require "rails_helper"

RSpec.describe "Markets Index Page", type: :feature do
  before(:each) do
    
  end

  describe "User Story 1 - Markets Information" do
    it "displays all markets with their name, city and state" do
      expect(page).to have_css("#markets-list")

      within "#markets-list" do
        expect(page).to have_table(headers: ["Name", "City", "State"])
        expect(page).to have_button("More Info")
      end
    end
  end
end
