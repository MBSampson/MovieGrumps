# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

3.times do
	Review.create!(
		movie_title: "Deadpool 2",
		review_date: Faker::Date.between(7.days.ago, Date.today),
		user_email: Faker::Internet.email,
		rating:  Faker::Number.between(1, 4),
		comment: Faker::Lorem.sentence
	)
end 

2.times do
	Review.create!(
		movie_title: "Avengers: Infinity War",
		review_date: Faker::Date.between(7.days.ago, Date.today),
		user_email: Faker::Internet.email,
		rating:  Faker::Number.between(1, 4),
		comment: Faker::Lorem.sentence
	)
end 

2.times do
	Review.create!(
		movie_title: "Fifty Shades Freed",
		review_date: Faker::Date.between(7.days.ago, Date.today),
		user_email: Faker::Internet.email,
		rating:  Faker::Number.between(1, 4),
		comment: Faker::Lorem.sentence
	)
end 

