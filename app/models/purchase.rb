class Purchase < ApplicationRecord
belongs_to :item
belongs_to :item
has_one :address
has_one_attached :image

end