require 'rails_helper'

describe "Papers index page", type: :feature do
    it "should not show papers filtered out by the 'year' filter" do
        @paper1 = FactoryBot.create(:paper)
        @paper2 = FactoryBot.create(:paper)
        
        @paper1.title = 'paper1'
        @paper1.year = 1950
        
        @paper2.title = 'paper2'
        @paper2.year = 1968

        visit papers_path(year: 1950)
    
        expect(page).to_not have_text('paper2')
        
    end
end