class ListsController < ApplicationController
 
  def index
    @lists = List.all
  end

  def new
    @lists = List.new
  end


  def create
    @lists = List.new(list_params)
    if @lists.save
      redirect_to @lists
    else
      render json: { errors: List.errors }, status: :unprocessable_entity 
    end
  end

  def show
    @lists = List.all
      render json: @lists
  end

  def update
    @lists = List.find(params[:id])
    lists.update(name: !List.name)
    render json: @lists  
  end

  def destroy
    @lists = List.find(params[:id]).destroy
    render json: { message: 'List deleted' }
  
  end

  private

  def list_params
    params.require(:list).permit(:name, :link, :description )
  end

end

