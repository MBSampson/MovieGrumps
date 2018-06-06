module MoviesHelper

	def generate_movie_tile(movie) 
		link_to show_movie_path(:movie_id => movie.id) do 
			("<img src='https://image.tmdb.org/t/p/w185_and_h278_bestv2#{movie.poster_path}' class='movie-poster-image'>").html_safe +
			("<p class='movie-list-title'>#{movie.title}</p>").html_safe
		end	 	
	end

end