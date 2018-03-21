class Brand < ApplicationRecord
  has_many :gears
  has_many :basketballs
  has_many :clothes
  has_many :jerseys
  has_many :shoes
  validates_presence_of :brand

  def to_s
    brand
  end
end
