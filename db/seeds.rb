require 'csv'
require 'pry'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
data = CSV.read("factual_data - factual_data.csv")
data.each do |row|
  r = Restaurant.create(address: row[0], latutude: row[1], longitude: row[2], name: row[3], price: row[4], rating: row[5])
  if row[6] != ''
    if Category.exists?(:name => row[6])
      cat = Category.find_by(name: row[6])
      Restcat.create(restaurant_id: r.id, category: cat)
    else
      Category.create(name: row[6])
    end
  end
  if row[7] != ''
    if Category.exists?(:name => row[7])
      cat = Category.find_by(name: row[7])
      Restcat.create(restaurant_id: r.id, category: cat)
    else
      Category.create(name: row[6])
    end
  end
  if row[8] != ''
    if Category.exists?(:name => row[8])
      cat = Category.find_by(name: row[8])
      Restcat.create(restaurant_id: r.id, category: cat)
    else
      Category.create(name: row[6])
    end
  end
  if row[9] != ''
    if Category.exists?(:name => row[9])
      cat = Category.find_by(name: row[9])
      Restcat.create(restaurant_id: r.id, category: cat)
    else
      Category.create(name: row[6])
    end
  end
  if row[10] != ''
    if Category.exists?(:name => row[10])
      cat = Category.find_by(name: row[10])
      Restcat.create(restaurant_id: r.id, category: cat)
    else
      Category.create(name: row[6])
    end
  end
end
