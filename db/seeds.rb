# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

2_000.times do |i|
  Book.create!( title: Faker::Book.title, 
	author: Faker::Book.author, 
	publisher: Faker::Book.publisher,
	category: Faker::Book.genre,
	isbn: "#{Faker::Number.number(digits: 3)}-#{Faker::Number.number(digits: 1)}-#{Faker::Number.number(digits: 2)}-#{Faker::Number.number(digits: 6)}-#{Faker::Number.number(digits: 1)}",
	dewey_decimal_number: "#{Faker::Number.number(digits: 3)}.#{Faker::Number.number(digits: 3)}",
	binding: Faker::Number.between(from: 0, to: 1))
  print '.' if i % 100 == 0
end