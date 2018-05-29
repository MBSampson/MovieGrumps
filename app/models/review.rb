class Review < ApplicationRecord
	validates_presence_of :movie_title, :user_email, :rating, :review_date
end
