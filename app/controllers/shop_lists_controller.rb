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
      redirect_to shoplist_path(@shoplists)
    else
      render :new
    end
  end

  def update

  end

  def show
   @shoplists = ShopList.find(params[:id])
   render json: @shoplists([:id])

  end
  
  private

  def shop_params
    params.require(:shoplists).permit(:item, :gift, :link)
  end


end
