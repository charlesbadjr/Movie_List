class ShopListsController < ApplicationController
  
  def index
   @shoplists = ShopList.all
  end

  def new
    @shoplists = ShopList.new
  end

  def create
    @shoplists = ShopList.new(shop_params)
    if @shoplists.save
      redirect_to shop_list_path(@shoplists)
    else
      render json: {errors: ShopList.errors }, status: :unprocessable_entity
    end
  end

  def update

  end

  def show
   @shoplists = ShopList.find(params[:id])
   render json: @shoplists

  end
  
  private

  def shop_params
    params.require(:shop_lists).permit(:item, :gift, :link)
  end


end
