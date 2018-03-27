class Brand < ApplicationRecord
  has_many :gears, dependent: :destroy
  has_many :basketballs, dependent: :destroy
  has_many :clothes, dependent: :destroy
  has_many :jerseys, dependent: :destroy
  has_many :shoes, dependent: :destroy
  validate :brand

  def to_s
    brand
  end
end
