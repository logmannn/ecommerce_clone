require 'rails_helper'

describe Book do
  it "returns a size of bestseller list" do
    response = Book.get_books
    expect(response.size).to(eq(20))
  end

  it "returns title of first book in array when the API call is made" do
    response = Book.get_books
    expect(response[0]["title"]).to(eq("\"I GIVE YOU MY BODY ...\""))
  end
end
