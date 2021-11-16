require 'rails_helper'

describe "Authors index page", type: :feature do
    it "should contain an HTML table with the headings 'Name' and 'Homepage', listing the full names as well as homepages of authors and should link to individual author's detail pages. The page should also contain a link to add new authors." do
        visit authors_path
        
        expect(page).to have_field('author[name]')
        expect(page).to have_field('author[homepage]')
        expect(page).to have_link 'New', href: new_author_path
    end
end