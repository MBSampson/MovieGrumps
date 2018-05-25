class AddCoreFieldsToReviews < ActiveRecord::Migration[5.2]
  def change
  	add_column :reviews, :movie_release_date, :date
  	add_column :reviews, :review_date, :date 

  	add_column :reviews, :genre, :string 
  	add_column :reviews, :user_email, :string 
  	
  	add_column :reviews, :rating, :integer 
  end
end
