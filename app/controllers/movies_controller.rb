class MoviesController < ApplicationController
  
  def index
    @movie = Movies.all 

  end

  def new
   @movie = Movies.new
   
  end

  def show

  end

  def update

  end

  private

  def movie_params
   params.require(movie).permit(:name :rating :something)
  end

end
