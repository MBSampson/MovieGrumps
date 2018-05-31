class RemoveMovieIdFromReviews < ActiveRecord::Migration[5.2]
  def change
  	remove_column :reviews, :movie_id
  end
end
