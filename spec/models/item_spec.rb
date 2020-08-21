require 'rails_helper'
RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end
 
  describe '商品出品' do
    it "nameが空だと登録できない" do
      @item.name = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end
    it "priceが空だと登録できない" do
      @item.price = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
    end
    it "explainが空だと登録できない" do
      @item.explain = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Explain can't be blank")
    end
    it "cate_idが1だと登録できない" do
      @item.cate_id = "1"
      @item.valid?
      expect(@item.errors.full_messages).to include("Cate must be other than 1")
    end
    it "state_idが1だと登録できない" do
      @item.state_id = "1"
      @item.valid?
      expect(@item.errors.full_messages).to include("State must be other than 1")
    end
    it "burden_idが1だと登録できない" do
      @item.burden_id = "1"
      @item.valid?
      expect(@item.errors.full_messages).to include("Burden must be other than 1")
    end
    it "ship_form_idが1だと登録できない" do
      @item.ship_form_id = "1"
      @item.valid?
      expect(@item.errors.full_messages).to include("Ship form must be other than 1")
    end
    it "shipping_days_idが1だと登録できない" do
      @item.shipping_days_id = "1"
      @item.valid?
      expect(@item.errors.full_messages).to include("Shipping days must be other than 1")
    end
    it "priceが299以下だと登録できない" do
      @item.price = "299"
      @item.valid?
      expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
    end
    it "priceが10000000以上だと登録できない" do
      @item.price = "10000000"
      @item.valid?
      expect(@item.errors.full_messages).to include("Price must be less than or equal to 9999999")
    end
    it "nameがあれば登録できる" do
      @item.name = "あ"
      expect(@item).to be_valid
    end
    it "priceがあれば登録できる" do
      @item.price = "1000"
      expect(@item).to be_valid
    end
    it "explainがあれば登録できる" do
      @item.explain = "ああ"
      expect(@item).to be_valid
    end
    it "cate_idが1以外なら登録できる" do
      @item.cate_id = "2"
      expect(@item).to be_valid
    end
    it "state_idが1以外なら登録できる" do
      @item.state_id = "2"
      expect(@item).to be_valid
    end
    it "burden_idが1以外なら登録できる" do
      @item.burden_id = "2"
      expect(@item).to be_valid
    end
    it "ship_form_idが1以外なら登録できる" do
      @item.ship_form_id = "2"
      expect(@item).to be_valid
    end
    it "shipping_days_idが1以外なら登録できる" do
      @item.shipping_days_id = "2"
      expect(@item).to be_valid
    end
    it "priceが300以上9999999なら登録できる" do
      @item.price = "1000"
      expect(@item).to be_valid
    end
  end
end