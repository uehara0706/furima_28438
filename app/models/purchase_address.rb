class PurchaseAddress

  include ActiveModel::Model
  attr_accessor :token, :zip_code, :province, :municipalies, :street_number, :building_number, :telephone_number

  with_options presence: true do
    validates :zip_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :province, numericality: { other_than: 1 }
    validates :municipalies
    validates :street_number
    validates :telephone_number, format: {with: /\A\d{10,11}\z/}
  end

  def save
    purchase = Purchase.create(user_id: user.id, item_id: item.id)
    Address.create(zip_code: zip_code, province: province, municipalies: municipalies, street_number: street_number, building_number: building_number, telephone_number: telephone_number, purchase_id: purchase.id)
  end

end 