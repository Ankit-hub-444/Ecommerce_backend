class CreateProductdetails < ActiveRecord::Migration[7.0]
  def change
    create_table :productdetails do |t|
      t.string :title
      t.integer :year
      t.integer :price
      t.string :category
      t.string :quantity
      t.string :imageurl
      t.text :description

      t.timestamps
    end
  end
end
