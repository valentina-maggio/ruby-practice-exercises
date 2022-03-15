class Book
  attr_reader :title, :author, :damaged

  def initialize(title, author, damaged)
    @title = title
    @author = author
    @damaged = false
  end
 
  def mark_book_damaged
    @damaged = true
  end

  def damaged?
    @damaged == true
  end

end
