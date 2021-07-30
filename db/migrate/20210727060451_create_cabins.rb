class CreateCabins < ActiveRecord::Migration[6.1]
  def change
    create_table :cabins do |t|
      t.string :name
      t.integer :price
      t.boolean :sold, null:false, default: false
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
