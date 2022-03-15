require 'book'

describe Book do
  subject(:book) { described_class.new('The Pragmatic Programmer', 'David Thomas', false) } 

  it 'returns the title of the book' do
    expect(book.title).to eq 'The Pragmatic Programmer'
  end

  it 'returns the author of the book' do
    expect(book.author).to eq 'David Thomas'
  end

  it 'marks a book as damaged' do
    expect { book.mark_book_damaged }.to change { book.damaged }.to(true)
  end

  it 'returns true if book is damaged' do
    book.mark_book_damaged
    expect(book.damaged?).to eq true
  end

  it 'returns false if book is not damaged' do
    expect(book.damaged?).to eq false
  end
end
