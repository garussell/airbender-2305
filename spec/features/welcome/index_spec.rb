require 'rails_helper'

RSpec.describe "Welcome Index Page" do
  before do
    
    visit root_path
  end

  describe "as a visitor" do
    describe "when I visit the root_path" do
      it "I see a field to select nation affiliation, and when I select a nation and click 'Search for Member', it redirects to '/search' page" do
        expect(page).to have_select(:nation)

        select 'Fire Nation', from: :nation
        click_on('Search for Members')

        expect(page).to have_current_path(search_path)
      end
    end
  end
end