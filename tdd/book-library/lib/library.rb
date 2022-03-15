require_relative 'book'

class Library

  attr_reader :books

  def initialize
    @books = []
  end
  
  def add_book(book)
    @books << book
  end

  def list_books
    @books.each { |book| puts "#{book.title}, #{book.author}" }
  end

  def count_damaged_books
    @books.select { |book| book.damaged? == true }.count
  end

  def books_by_author(author_name)
   p @books.select { |book| 
      book.author == author_name 
    }.map { |book| 
    book.title }.join(', ')
    end
end

  