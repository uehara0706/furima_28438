class ItemsController < ApplicationController
  ##before_action :move_to_new_user_session, except: [:index, :show]
  before_action :move_to_index, except: [:index, :show]
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  
  def index 
    @items = Item.all.order("created_at DESC")
    @purchase = PurchaseAddress.new
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

  def show
  end
 
  def edit 
  end
  
  def update
    
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
  end
   
  def destroy
     if @item.destroy
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

  def set_item
    @item = Item.find(params[:id])
  end

end
