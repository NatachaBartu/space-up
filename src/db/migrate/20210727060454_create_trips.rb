class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.references :planet, null: false, foreign_key: true
      t.integer :price
      t.boolean :sold, null:false, default: false
      t.references :cabin, null: false, foreign_key: true


      t.timestamps
    end
  end
end
