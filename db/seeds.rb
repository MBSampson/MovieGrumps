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

puts "Generated review seeds"

# Tmdb wrapper does not properly display the genre list. These seeds, and the genre model, will act as a substitue for it.

Genre.create!(
	genre_id: 28,
	name: "Action"
)

Genre.create!(
	genre_id: 12,
	name: "Adventure"
)

Genre.create!(
	genre_id: 16,
	name: "Animation"
)

Genre.create!(
	genre_id: 35,
	name: "Comedy"
)

Genre.create!(
	genre_id: 80,
	name: "Crime"
)

Genre.create!(
	genre_id: 99,
	name: "Documentary"
)

Genre.create!(
	genre_id: 18,
	name: "Drama"
)

Genre.create!(
	genre_id: 10751,
	name: "Family"
)

Genre.create!(
	genre_id: 14,
	name: "Fantasy"
)

Genre.create!(
	genre_id: 36,
	name: "History"
)

Genre.create!(
	genre_id: 27,
	name: "Horror"
)

Genre.create!(
	genre_id: 10402,
	name: "Music"
)

Genre.create!(
	genre_id: 9648,
	name: "Mystery"
)

Genre.create!(
	genre_id: 10749,
	name: "Romance"
)

Genre.create!(
	genre_id: 878,
	name: "Science Fiction"
)

Genre.create!(
	genre_id: 10770,
	name: "TV Movie"
)

Genre.create!(
	genre_id: 53,
	name: "Thriller"
)

Genre.create!(
	genre_id: 10752,
	name: "War"
)

Genre.create!(
	genre_id: 37,
	name: "Western"
)

puts "Generated genre seeds"
