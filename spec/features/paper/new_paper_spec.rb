require 'rails_helper'

describe "New paper page", type: :feature do
  it "should exist at 'new_paper_path' and render withour error" do
    visit new_paper_path
  end
  it "should have a 'title' and a 'venue' string as well as a 'year' integer, indicating publishing date" do
    visit new_paper_path
    expect(page).to have_field('paper[title]')
    expect(page).to have_field('paper[venue]')
    expect(page).to have_field('paper[year]')
  end
  it "should have an empty list of authors" do 
    @paper = FactoryBot.create(:paper)
    # expect(@paper).to have_attributes(authors: [])
    expect(@paper.authors).to eq([])
  end
end
