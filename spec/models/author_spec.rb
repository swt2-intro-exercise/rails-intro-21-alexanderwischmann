describe "Author model", type: :model do
    it "should exist a author model having 'first_name', 'last_name', and 'homepage' as well as a method 'name', which returns the full name of an author" do
        author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
        expect(author.first_name).to eq('Alan')
        expect(author.last_name).to eq('Turing')
        expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
        expect(author.name).to eq('Alan Turing')
    end
    it "should fail validation for an author without last name" do
        author1 = Author.new(first_name: 'Alan', homepage: 'http://wikipedia.org/Alan_Turing')
        author2 = Author.new(first_name: 'Alan', last_name: '', homepage: 'http://wikipedia.org/Alan_Turing')
        expect(author1).to_not be_valid
        expect(author2).to_not be_valid
    end
end
