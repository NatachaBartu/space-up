class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
