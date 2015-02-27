class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.references :neighborhood, index: true

      t.timestamps null: false
    end
    add_foreign_key :venues, :neighborhoods
  end
end
