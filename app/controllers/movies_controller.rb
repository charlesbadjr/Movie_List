class MoviesController < ApplicationController
  # before_action
  
  def index
    @movies = Movie.all 
      
  end

  def new
   @movies = Movie.new
   
  end

  def create
    @movies = Movie.create(movies_params[:id])
     if @movies.save
       render json: movies
      else
      redirect_to index
    end
  end

  def show
    @movies = Movie.find(movies_params[:id])
     respond_to do |format|
     format.html #show.html.erb
     format.json { render json: @movies }
     end
  end

  def update
    @movies = Movie.update(movies_params[:id])
      if movies.save
      render json: movies.all 
    else
     redirect_to 
    end
  end

  private

  def movies_params
   params.require(movie).permit(:title, :description, :link, :watched, :rating )
  end

end
