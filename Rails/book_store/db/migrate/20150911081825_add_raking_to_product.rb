class AddRakingToProduct < ActiveRecord::Migration
  def change
    add_column :products, :ranking, :string
  end
end
