class Item < ApplicationRecord
end

with_options presence: true do

validates :name
validates :price
validates :explain
validates :cate
validates :state
validates :burden 
validates :ship_from
validates :Shipping_days