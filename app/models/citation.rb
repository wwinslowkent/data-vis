class Citation < ApplicationRecord
  validates :address, presence: true
  validates :parcel, presence: true
  validates :name, presence: true
  validates :code_number, presence: true
  validates :code_description, presence: true
  validates :date_cited, presence: true
  validates :status, presence: true
  validates :case_number, presence: true

end
