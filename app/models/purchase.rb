class Purchase < ApplicationRecord
belongs_to :item
belongs_to :item
has_one :address
has_one_attached :image

with_options presence: true do

validates :zip_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
validates :privince, numericality: { other_than: 1 }
validates :municipalities
validates :street_number
validates :telephone_number, format: {with: /\A\d{10,11}\z/}

end 
validates :telephone_number,  length: { maximum: 11 }
validates :card_number, length: { is: 16 }
end