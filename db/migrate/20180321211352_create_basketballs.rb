class CreateBasketballs < ActiveRecord::Migration[5.1]
  def change
    create_table :basketballs do |t|
      t.string :name
      t.references :brand, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
