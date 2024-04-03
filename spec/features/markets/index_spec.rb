require "rails_helper"

RSpec.describe "Markets Index Page", type: :feature do
  before(:each) do
    visit "/markets"
  end

  describe "User Story 1 - Markets Information" do
    it "displays all markets with their name, city and state", :vcr do
      expect(page).to have_css("#markets-list")
      page.has_table?

      within "#markets-list" do
        expect(page).to have_selector("th", text: "Name")
        expect(page).to have_selector("th", text: "City")
        expect(page).to have_selector("th", text: "State")
        expect(page).to have_selector("th", text: "")
        expect(page).to have_selector("td", text: "More Info")

        all("tr").each do |row|
          expect(row.text).not_to be_empty
        end
      end
    end

    it "has a button to more info for a market", :vcr do
      within "#markets-list" do
        expect(page).to have_selector("th", text: "Name")
        expect(page).to have_selector("th", text: "City")
        expect(page).to have_selector("th", text: "State")
        expect(page).to have_selector("th", text: "")
        expect(page).to have_selector("td", text: "More Info")

        all("tr").each do |row|
          if row.has_button?
            row.click_button("More Info")
            expect(page.current_path).to_not eq(markets_path)
          end
        end
      end
    end
  end
end
