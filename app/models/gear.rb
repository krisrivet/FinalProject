class Gear < ApplicationRecord
  belongs_to :brand
  validate :name, :type
  validates :price, numericality: true, presence: true
  paginates_per 2
end
