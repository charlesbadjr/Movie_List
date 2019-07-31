class ListsController < ApplicationController
 
  def index
    @lists = List.all
  end

  def create
    @lists = List.new(list_params)
    if list.save
      render json: list
    else
      render json: { errors: list.errors }, status: :unprocessable_entity 
    end
  end

  def update
    lists = List.find(params[:id])
    list.update(complete: !list.complete)
    render json: list  
  end

  def destroy
    List.find(params[:id]).destroy
    render json: { message: 'List deleted' }
  end

  private

  def list_params
    params.require(:list).permit(:name, :complete)
  end

end

