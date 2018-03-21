class Gear < ApplicationRecord
  belongs_to :brand
  validates_presence_of :name, :type
  validates :price, numericality: true, presence: true
end
