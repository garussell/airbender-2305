require 'rails_helper'

RSpec.describe "Search Index Page" do
  before do
    
    visit root_path
    select 'Fire Nation', from: :nation
    click_on 'Search For Members'
    
  end

  describe "as a visitor" do
    describe "when I visit the search page after selecting 'Fire Nation'" do
      it "I should see the 'total number' of people who live in the 'Fire Nation'" do
        expect(page).to have_content("total number: 97")
      end

      it "I should see a list with detailed information for the first 25 members of the nation, and for each of the members I should see their name (and photo if available), list of allies or 'none', list of enemies or 'none', and any affiliations that member has" do
        expect(page).to have_content("Name: Azula")
        expect(page).to have_content("Photo: ")
        expect(page).to have_content("Allies: Ozai, Zuko")
        expect(page).to have_content("Enemies: Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa")
        expect(page).to have_content("Affiliation: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
      end
    end
  end
end