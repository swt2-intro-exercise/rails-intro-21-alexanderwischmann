require 'rails_helper'

describe "Edit author page", type: :feature do
  it "should be possible to change an author in an edit form" do
    @Alan = FactoryBot.create(:author)
    visit edit_author_path(@Alan)
  end
end