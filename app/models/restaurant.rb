class Restaurant < ApplicationRecord
  validates :address, presence: true
  validates :latutude, presence: true
  validates :longitude, presence: true
  validates :name, presence: true

end
