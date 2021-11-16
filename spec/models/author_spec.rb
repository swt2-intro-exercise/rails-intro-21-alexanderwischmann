describe "Author model", type: :model do
    it "should exist a author model having 'first_name', 'last_name', and 'homepage' as well as a method 'name', which returns the full name of an author" do
        author = Author.new('Alan', 'Turing', 'http://wikipedia.org/Alan_Turing')
        expect(author.first_name).to eq('Alan')
        expect(author.last_name).to eq('Turing')
        expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
        expect(author.name).to eq('Alan Turing')
    end
end
