class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
     t.string :name
     t.integer :price
     t.integer :quantity
     t.string :category
     t.string :description
      t.timestamps
    end
  end
end