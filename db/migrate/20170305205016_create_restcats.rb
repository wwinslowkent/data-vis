class CreateRestcats < ActiveRecord::Migration[5.0]
  def change
    create_table :restcats do |t|
      t.belongs_to :restaurant
      t.belongs_to :category
    end
  end
end
