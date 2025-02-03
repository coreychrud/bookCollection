require 'rails_helper'
RSpec.describe Book, type: :model do
    it 'is valid with a valid title' do
        book = Book.new(
            title: 'Valid Title', 
            author: 'Author Name', 
            price: 19.99, 
            published_date: Date.today
        )
        expect(book.title).to eq('Valid Title')
    end

    it 'is valid with a valid author' do
        book = Book.new(
            title: 'Valid Title', 
            author: 'Author Name', 
            price: 19.99, 
            published_date: Date.today
        )
        expect(book.author).to eq('Author Name')
    end

    it 'is valid with a valid price' do
        book = Book.new(
            title: 'Valid Title', 
            author: 'Author Name', 
            price: 19.99, 
            published_date: Date.today
        )
        expect(book.price).to eq(19.99)
    end

    it 'is valid with a valid published date' do
        book = Book.new(
            title: 'Valid Title', 
            author: 'Author Name', 
            price: 19.99, 
            published_date: Date.today
        )
        expect(book.published_date).to eq(Date.today)
    end

    it 'is invalid without a title' do
        book = Book.new(author: 'Author Name', price: 19.99, published_date: Date.today)
        expect(book).not_to be_valid
    end

    it 'is invalid without an author' do
        book = Book.new(title: 'Valid Title', price: 19.99, published_date: Date.today)
        expect(book).not_to be_valid
    end

    it 'is invalid without a price' do
        book = Book.new(title: 'Valid Title', author: 'Author Name', published_date: Date.today)
        expect(book).not_to be_valid
    end

    it 'is invalid without a published date' do
        book = Book.new(title: 'Valid Title', author: 'Author Name', price: 19.99)
        expect(book).not_to be_valid
    end
end