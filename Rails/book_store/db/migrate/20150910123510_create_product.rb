class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product
      t.text :description
      t.integer :price
    end
  end
end

