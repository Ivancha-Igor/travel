class CreatePlacements < ActiveRecord::Migration
  def change
    create_table :placements do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.integer :price
      t.string :address

      t.timestamps null: false
    end
  end
end
