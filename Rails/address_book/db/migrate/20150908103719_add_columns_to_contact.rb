class AddColumnsToContact < ActiveRecord::Migration
  def change
  	add_column :contacts, :email, :string
  	add_column :contacts, :address, :string
  	add_column :contacts, :phone, :string
  end
end
