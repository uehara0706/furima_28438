class Item < ApplicationRecord
  # extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one_attached :image
  has_one :purchase
  with_options presence: true do

  validates :image
  validates :name
  validates :price
  validates :explain
  validates :price, :numericality => { :greater_than_or_equal_to => 300 }
  validates :price, :numericality => { :less_than_or_equal_to => 9999999 } 
  end

  with_options numericality: { other_than: 1 } do
  
  validates :cate_id
  validates :burden_id
  validates :state_id
  validates :ship_form_id
  validates :shipping_days_id
end
end
