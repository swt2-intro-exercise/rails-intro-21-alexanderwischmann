describe "Edit paper page" do 
    it "should contain a single multiple select box" do 
        @paper = FactoryBot.create(:paper)
        visit edit_paper_path(@paper)
        expect(page).to have_select('authors', multiple: true)
    end 
end
