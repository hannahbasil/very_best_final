class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.references :cuisine, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :dishes, :cuisines
  end
end
