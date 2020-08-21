class Item < ApplicationRecord
  # extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one_attached :image

  with_options presence: true do

  validates :name
  validates :price
  validates :explain
  validates :cate_id, numericality: { other_than: 1 } 
  validates :burden_id, numericality: { other_than: 1 } 
  validates :state_id, numericality: { other_than: 1 } 
  validates :ship_form_id, numericality: { other_than: 1 } 
  validates :shipping_days_id, numericality: { other_than: 1 } 
  validates :price, :numericality => { :greater_than_or_equal_to => 300 }
  validates :price, :numericality => { :less_than_or_equal_to => 9999999 } 
  end

end