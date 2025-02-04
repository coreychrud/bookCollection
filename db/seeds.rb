# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb
if Rails.env.development?
    Book.create!([
        { title: "Dev Book 1", author: "Author 1", price: 10.00, published_date: '2023-01-01' },
        { title: "Dev Book 2", author: "Author 2", price: 15.00, published_date: '2023-02-01' },
        { title: "Dev Book 3", author: "Author 3", price: 20.00, published_date: '2023-03-01' },
        { title: "Dev Book 4", author: "Author 4", price: 25.00, published_date: '2023-04-01' },
        { title: "Dev Book 5", author: "Author 5", price: 30.00, published_date: '2023-05-01' }
    ])
end

if Rails.env.test?
    Book.create!([
        { title: "Test Book 1", author: "Author 1", price: 10.00, published_date: '2023-01-01' },
        { title: "Test Book 2", author: "Author 2", price: 15.00, published_date: '2023-02-01' },
        { title: "Test Book 3", author: "Author 3", price: 20.00, published_date: '2023-03-01' },
        { title: "Test Book 4", author: "Author 4", price: 25.00, published_date: '2023-04-01' },
        { title: "Test Book 5", author: "Author 5", price: 30.00, published_date: '2023-05-01' }
    ])
end

if Rails.env.production?
    Book.create!([
        { title: "Prod Book 1", author: "Author 1", price: 10.00, published_date: '2023-01-01' },
        { title: "Prod Book 2", author: "Author 2", price: 15.00, published_date: '2023-02-01' },
        { title: "Prod Book 3", author: "Author 3", price: 20.00, published_date: '2023-03-01' },
        { title: "Prod Book 4", author: "Author 4", price: 25.00, published_date: '2023-04-01' },
        { title: "Prod Book 5", author: "Author 5", price: 30.00, published_date: '2023-05-01' }
    ])
end
Book.create!([
    { title: "To Kill a Mockingbird", author: "Harper Lee", price: 10.99, published_date: '2025-01-21' },
    { title: "1984", author: "George Orwell", price: 8.99, published_date: '1949-06-08' },
    { title: "The Great Gatsby", author: "F. Scott Fitzgerald", price: 12.99, published_date: '1925-04-10' },
    { title: "The Catcher in the Rye", author: "J.D. Salinger", price: 9.99, published_date: '1951-07-16' },
    { title: "Moby-Dick", author: "Herman Melville", price: 11.99, published_date: '1851-10-18' }
])

