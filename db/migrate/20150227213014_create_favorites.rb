class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.text :notes
      t.references :user, index: true
      t.references :dish, index: true
      t.references :venue, index: true

      t.timestamps null: false
    end
    add_foreign_key :favorites, :users
    add_foreign_key :favorites, :dishes
    add_foreign_key :favorites, :venues
  end
end
