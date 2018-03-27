class Clothe < ApplicationRecord
  belongs_to :brand
  validates :name, :type
  validates :price, numericality: true, presence: true
  paginates_per 2
end
