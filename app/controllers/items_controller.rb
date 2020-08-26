class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  
  def index 
    @items = Item.all.order("created_at DESC")
  end
  

  def new
    @item = Item.new
  end

  def create
   
    # Item.create(item_params)
    @item = Item.new(item_params)
    if @item.save!
      redirect_to root_path
    else
      render :new
    end
  
    
  end

  def show
    @item = Item.find(params[:id])
  end
 
  def edit
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
    end
  
 private

  def item_params
    params.require(:item).permit(:name,:explain,:price,:image,:cate_id,:state_id,:burden_id,:ship_form_id,:shipping_days_id).merge(user_id: current_user.id)
  end
  
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
