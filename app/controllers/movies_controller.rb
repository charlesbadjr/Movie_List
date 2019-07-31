class MoviesController < ApplicationController
  
  def index
    @movie = Movies.all 

  end

  def show
  
  end

  def new
   @movie = Movies.new(params)
   
  end

end
