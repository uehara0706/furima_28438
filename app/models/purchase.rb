class Purchase < ApplicationRecord
belongs_to :item
has_one_attached :image
end
