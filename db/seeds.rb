# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
	Review.create!(
		title: Faker::Coffee.blend_name,
		movie_release_date: Faker::Date.between(365.days.ago, Date.today),
		review_date: Faker::Date.between(7.days.ago, Date.today),
		genre: "test",
		user_email: Faker::Internet.email,
		rating:  Faker::Number.between(1, 4)
	)
end 