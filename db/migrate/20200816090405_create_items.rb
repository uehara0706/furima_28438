class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :cate_id
      t.integer :state_id
      t.text :explain
      t.integer :burden_id
      t.integer :ship_form_id
      t.integer :shipping_days_id
      t.integer :user_id
      t.timestamps
    end
  end
end
