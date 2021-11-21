describe "Show paper page", type: :feature do
  it "should show the author's full name" do
    @Alan = FactoryBot.create(:author)
    @paper = FactoryBot.create(:paper)
    @paper.authors.append(@Alan)

    visit paper_path(@paper)

    expect(page).to have_text(@Alan.name)
  end
end