require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
    @movies = Tmdb::Movie.popular
    @movies = @movies.results
    @movie = @movies.first
  end

  test "should get index" do
    get reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_review_url(:movie_id => @movie.id)
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post reviews_url, params: {
       review: {
          movie_title: @review.movie_title,
          comment: @review.comment,
          rating: @review.rating,
          user_email: @review.user_email,
          review_date: @review.review_date  
        } 
      }
    end

    assert_redirected_to review_url(Review.last)
  end

  test "should show review" do
    get review_url(@review)
    assert_response :success
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete review_url(@review)
    end

    assert_redirected_to reviews_url
  end

end
