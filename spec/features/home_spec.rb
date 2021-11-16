require 'rails_helper'

describe "Index page", :type => :feature do
  
  it "should display 'Paper Management System'" do
    visit root_path
    expect(page).to have_text("It works!\nYou are seeing the rendered view of 'views/home/index.html.erb'")
  end
end