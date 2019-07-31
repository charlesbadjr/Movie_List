class CreateShopLists < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_lists do |t|
      t.string :item
      t.text :description
      t.integer :priority
      t.boolean :purchased

      t.timestamps
    end
  end
end
