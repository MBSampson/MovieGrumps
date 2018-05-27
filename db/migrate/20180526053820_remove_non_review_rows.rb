class RemoveNonReviewRows < ActiveRecord::Migration[5.2]
  def change
  	remove_column :reviews, :title
  	remove_column :reviews, :movie_release_date
  	remove_column :reviews, :genre
  end
end
