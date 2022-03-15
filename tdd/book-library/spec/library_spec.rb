require 'library'
require 'book'

describe Library do
  subject(:library) { described_class.new}  
  let(:book) { double('book double', :title => 'The Pragmatic Programmer', :author => 'David Thomas', :damaged => false ) }
  let(:book2) { double('book2 double', :title => 'How to avoid a climate disaster', :author => 'Bill Gates', :damaged => false) }
  let(:book3) { double('book2 double', :title => 'Programming Ruby', :author => 'David Thomas', :damaged => false ) }

  context 'not damaged book' do 
    it 'adds a book to the list' do
     expect(library.add_book(book)).to include(book)
    end

    it 'shows the list of books' do
      library.add_book(book)
      library.add_book(book2)
      expect { library.list_books }.to output("#{book.title}, #{book.author}\n#{book2.title}, #{book2.author}\n").to_stdout
    end

  it 'lists all books titles for a specific author' do
    library.add_book(book)
    library.add_book(book2)
    library.add_book(book3)
    expect(library.books_by_author('David Thomas')).to eq 'The Pragmatic Programmer, Programming Ruby'
  end
end

  context 'damaged book' do 
    before do
      allow(book).to receive(:damaged?).and_return(true)
    end

    it 'counts the number of damaged books' do
      library.add_book(book)
      expect(library.count_damaged_books).to eq 1
    end
  end
end
