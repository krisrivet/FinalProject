class Basketball < ApplicationRecord
  belongs_to :brand
  validates_presence_of :name
  validates :price, numericality: true, presence: true
  paginates_per 2
end
