require 'rails_helper'

RSpec.describe "Search Index Page" do
  before do
    
    visit root_path
    select 'Fire Nation', from: :nation
    click_on 'Search for Members'
    
  end

  describe "as a visitor" do
    describe "when I visit the search page after selecting 'Fire Nation'" do
      it "I should see the 'total number' of people who live in the 'Fire Nation'" do
        expect(page).to have_current_path(search_path)
        expect(page).to have_content(total number: 100)
      end

      it "I should see a list with detailed information for the first 25 members of the nation, and for each of the members I should see their name (and photo if available), list of allies or 'none', list of enemies or 'none', and any affiliations that member has" do
        # expect(page).to have_content()
      end
    end
  end
end