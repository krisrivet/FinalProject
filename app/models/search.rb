class Search < ApplicationRecord
  def search_basketballs
    basketballs = Basketball.all

    basketballs = basketballs.where(["name LIKE ?","%#{keywords}%"]) if keywords.present?
    basketballs = basketballs.where(["brand_id LIKE ?",brand]) if brand.present?

    return basketballs
  end
end
