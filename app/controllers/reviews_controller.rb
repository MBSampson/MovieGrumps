class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_movies, only: [:index, :movie_list]
  before_action :set_review_list, only: [:index, :review_list]

  def index
    @genres = Genre.all
  end

  def about
   
  end 

  def movie_list
    if params[:filter] == "title"
      @movies = @movies.sort_by &:title
    elsif params[:filter] == "release_date" 
      @movies = @movies.sort_by &:release_date
    elsif params[:filter] == "genre" 
      @movies = @movies.sort_by &:genre
    end  

  end 

  def movie
    @movie = Tmdb::Movie.detail(params[:movie_id])
  end 

  def review_list 

  end 

  def show
  end

  def new
    @review = Review.new
    @time = Time.now
  end

  def edit
  end

  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    def set_review_list 
      @reviews = Review.all
    end 

    def set_movies
      @movies = Tmdb::Movie.popular
      @movies = @movies.results
    end 

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:movie_title, :review_date, :rating, :comment, :user_email)
    end

end
