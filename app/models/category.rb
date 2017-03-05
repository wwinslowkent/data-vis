class Category < ApplicationRecord
  validates :name, presence: true
  has_many :restcats
  has_many :restaurants, through: :restcats

end
