class ItemsController < ApplicationController
  
  def index 
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:item).permit(:name,:explain,:price,:images,:cate_id,:state_id,:burden_id,:ship_form_id,:shipping_days_id)
  end

end
