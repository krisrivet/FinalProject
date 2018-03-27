class Jersey < ApplicationRecord
  belongs_to :brand
  validates :name
  validates :price, numericality: true, presence: true
  paginates_per 2
end
