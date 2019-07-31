class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.text :link
      t.boolean :watched
      t.integer :rating

      t.timestamps
    end
  end
end
