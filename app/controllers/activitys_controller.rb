class ActivitysController < ApplicationController
  
  def index
    @activitys = Activity.all

  end

  def show
    @activitys =Activity.find(params[:id])

  end

  def new
   @activitys = Activity.new

  end

end
