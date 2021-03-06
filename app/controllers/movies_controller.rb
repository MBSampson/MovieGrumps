class MoviesController < ApplicationController

	def index
		@movies = Tmdb::Movie.popular
		@movies = @movies.results

		if params[:filter] == "title"
			@movies = @movies.sort_by &:title
		elsif params[:filter] == "release_date" 
			@movies = @movies.sort_by &:release_date
		elsif params[:filter] == "genre" 
			@movies = @movies.sort_by &:genre
		end
		@movies = Kaminari.paginate_array(@movies).page(params[:page]).per(12)
	end	 

	def show_movie
		@movie = Tmdb::Movie.detail(params[:movie_id])
		@review_list = Review.all
		@reviews = Array.new

		@review_list.each do |review|
			if review.movie_title == @movie.title
				@reviews.push(review) 
			end 
		end
		@reviews = Kaminari.paginate_array(@reviews).page(params[:page]).per(4)
	end 

	private 

end
