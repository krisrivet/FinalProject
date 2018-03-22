class AddImageToGears < ActiveRecord::Migration[5.1]
  def change
    add_column :gears, :image, :string
  end
end
