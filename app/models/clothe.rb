class Clothe < ApplicationRecord
  belongs_to :brand
  validates_presence_of :name, :type
  validates :price, numericality: true, presence: true
  paginates_per 2
end
