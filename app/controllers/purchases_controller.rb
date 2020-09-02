class PurchasesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
def index
  @item = Item.find(params[:item_id])
end

def create
  @item = Item.find(params[:item_id])
  @purchase = PurchaseAddress.new(order_params)
  if @purchase.valid?
    pay_item
    @purchase.save
    return redirect_to root_path
  else
    render 'index'
  end
end

private

  def order_params
    params.require(:purchase_address).permit(:token, :zip_code, :province, :municipalies, :street_number, :building_number, :telephone_number)
  end

  def pay_item
    Payjp.api_key = "sk_test_11b24e55b1b14f3a5041b176" 
    Payjp::Charge.create(
      amount: order_params[:price],  
      card: order_params[:token],    
      currency:'jpy'                 
    )
  end
 
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
