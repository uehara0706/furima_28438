class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :municipalities
      t.string :street_number 
      t.string :building_number 
      t.string :telephone_number
      t.string :zip_code
      t.integer :province
      t.integer :purchase_id
      t.timestamps
    end
  end
end
