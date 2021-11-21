require 'rails_helper'

# RSpec.describe Paper, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe "Paper model", type: :model do
  it "should not be valid without having all attribute (title, venue and year) set" do
    paper1 = Paper.new(title: 'title', venue: 'venue')
    paper2 = Paper.new(title: 'title', year: 20)
    paper3 = Paper.new(venue: 'venue', year: 20)

    expect(paper1).to_not be_valid
    expect(paper2).to_not be_valid 
    expect(paper2).to_not be_valid
  end

  it "should have 'year' as an numric value" do 
    @paper = FactoryBot.create(:paper)
    expect(@paper.year).to be_a(Integer)
  end
end