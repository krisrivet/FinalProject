class AddImageToJerseys < ActiveRecord::Migration[5.1]
  def change
    add_column :jerseys, :image, :string
  end
end
