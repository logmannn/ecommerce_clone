class BookController < ApplicationController
  def index
    @books = Book.get_books
  end

  def show
    @order_items = current_order.order_items
  end

end
