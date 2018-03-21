class Brand < ApplicationRecord
  has_many :gears
  has_many :basketballs
  has_many :clothes
  has_many :jerseys
  has_many :shoes
end
