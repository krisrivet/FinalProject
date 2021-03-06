class CreateGears < ActiveRecord::Migration[5.1]
  def change
    create_table :gears do |t|
      t.string :name
      t.string :type
      t.references :brand, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
