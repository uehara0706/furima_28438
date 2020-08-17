class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :cate
      t.integer :state
      t.text :images
      t.text :explain
      t.integer :burden
      t.integer :ship_form
      t.integer :Shipping_days  
      t.integer :user_id   
      t.timestamps
    end
  end
end
