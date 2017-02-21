class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :address, null: false
      t.string :latutude, null: false
      t.string :longitude, null: false
      t.string :name, null: false
      t.string :price, null: false
      t.string :rating, null: false
    end
  end
end
