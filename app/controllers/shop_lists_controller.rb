class ShopListsController < ApplicationController
  
  def index
  
  end

  def show
  
  end

  def create
    @shoplist = Shoplists.new(shoplist.params)
    
    if @shoplist.save
      redirect_to shoplist_path(@shoplist)
    else
      render :new
    end
  end


  def new
  
  end

  private

  def shop_params
    params.require(:shoplist).permit(:item, :gift, :link)
  end


end
