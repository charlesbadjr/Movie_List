class ActivitysController < ApplicationController
  
  def index
    @activitys = Activity.all

  end

  def new
   @activitys = Activity.new

  end

  def show
    @activitys =Activity.find(params[:id])

  end

  private
     
     def activitys_params
      params.require(:activitys).permit(:todo, :description, :rating )

     end
end
