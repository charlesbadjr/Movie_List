class ActivitysController < ApplicationController
  
  def index
    @activitys = Activity.all

  end

  def new
   @activitys = Activity.new

  end

  def create
    @activitys = Activity.new(activitys_params)
    if activitys.save
      redirect_to @activitys
    else
      render json: { errors: Activity.errors }, status: :unprocessable_entity 
    end
  end

  def show
    @activitys = Activity.find(params[:id])

  end

  def delete
     @activitys = Activity.destroy(params[:id])

  end

  private
     
     def activitys_params
      params.require(:activitys).permit(:name, :description, :funlevel, :complete )
     end

end
