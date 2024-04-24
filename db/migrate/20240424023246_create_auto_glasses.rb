class CreateAutoGlasses < ActiveRecord::Migration[7.1]
  def change
    create_table :auto_glasses do |t|
      t.boolean :availability
      t.text :description
      t.string :part_number
      t.integer :quantity
      t.integer :ships_within_days
      t.integer :year
      t.string :make
      t.string :model
      t.string :body_style
      t.float :price
      t.integer :delivery_option

      t.timestamps
    end
  end
end
