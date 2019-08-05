class ShopListsController < ApplicationController
  
  def index
   @shoplist = Shoplists.all 

  end

  def new
    @shoplist = Shoplists.new
  end

  def create
    @shoplist = Shoplists.new(shoplist.params)
    if @shoplist.save
      redirect_to shoplist_path(@shoplist)
    else
      render :new
    end
  end

  def update

  end

  def show
   @shoplist = ShopLists.find(params[:id])
   render json: @shoplist([:id])

  end
  
  private

  def shop_params
    params.require(:shoplist).permit(:item, :gift, :link)
  end


end
