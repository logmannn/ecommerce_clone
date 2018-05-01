class BookController < ApplicationController
  def index
    @books = Book.get_books
  end
end
