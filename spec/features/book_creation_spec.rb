require 'rails_helper'

RSpec.describe "Books", type: :request do
  let!(:book) { Book.create(title: "Test Book", author: "Author Name", price: 19.99, published_date: "2023-01-01") }

  describe "GET /books" do
    it "displays the books index page" do
      get books_path
      expect(response).to have_http_status(:success)
      expect(response.body).to include("Books") # Ensure "Books" is present
      expect(response.body).to include(book.title) # Ensure the book title is listed
    end
  end

  describe "GET /books/:id" do
    it "displays the book's show page" do
      get book_path(book)
      expect(response).to have_http_status(:success)
      expect(response.body).to include(book.title)
      expect(response.body).to include(book.author)
    end
  end

  describe "GET /books/new" do
    it "displays the new book form" do
      get new_book_path
      expect(response).to have_http_status(:success)
      expect(response.body).to include("New book") # Assuming your form has this heading
    end
  end

  describe "GET /books/:id/edit" do
    it "displays the edit book form" do
      get edit_book_path(book)
      expect(response).to have_http_status(:success)
      expect(response.body).to include("Editing book") # Assuming your edit form has this heading
    end
  end

  describe "POST /books" do
    it "creates a new book and redirects" do
      post books_path, params: { book: { title: "New Book", author: "New Author", price: 24.99, published_date: "2023-01-02" } }
      expect(response).to redirect_to(book_path(Book.last))
      follow_redirect!
      expect(response.body).to include("Book was successfully created.")
      expect(response.body).to include("New Book")
    end
  end

  describe "PATCH /books/:id" do
    it "updates an existing book and redirects" do
      patch book_path(book), params: { book: { title: "Updated Title" } }
      expect(response).to redirect_to(book_path(book))
      follow_redirect!
      expect(response.body).to include("Book was successfully updated.")
      expect(response.body).to include("Updated Title")
    end
  end

  describe "DELETE /books/:id" do
    it "destroys the book and redirects to index" do
      delete book_path(book)
      expect(response).to redirect_to(books_path)
      follow_redirect!
      expect(response.body).to include("Book was successfully destroyed.")
      expect(response.body).not_to include(book.title) # Ensure the deleted book is no longer displayed
    end
  end
end
