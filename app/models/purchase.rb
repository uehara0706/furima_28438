class Purchase < ApplicationRecord
belongs_to :item
has_one_attached :image

with_options presence: true do

validates :zip_code
validates :privince
validates :municipalities
validates :street_number
validates :telephone_number

end 
validates :telephone_number,  length: { maximum: 11 }
validates :card_number, length: { is: 16 }
end