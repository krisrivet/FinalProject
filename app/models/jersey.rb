class Jersey < ApplicationRecord
  belongs_to :brand
  validate :name
  validates :price, numericality: true, presence: true
  paginates_per 2
end
