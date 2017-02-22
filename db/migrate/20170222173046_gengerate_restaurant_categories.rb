class GengerateRestaurantCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurantcategories do |t|
      t.belongs_to :restaurant
      t.belongs_to :category
    end
  end
end
