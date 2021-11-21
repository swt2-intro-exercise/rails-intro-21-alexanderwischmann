require 'rails_helper'

describe "Authors index page", type: :feature do
    it "should contain an HTML table with the headings 'Name' and 'Homepage', listing the full names as well as homepages of authors and should link to individual author's detail pages. The page should also contain a link to add new authors." do
        visit authors_path
        
        expect(page).to have_table
        expect(page).to have_link 'New', href: new_author_path
    end

    it "should have a link to delete an author" do
        @Alan = FactoryBot.create(:author)
        visit authors_path

        expect(page).to have_link 'Delete', href: author_path(@Alan)
    end
end