class AddContactAtt < ActiveRecord::Migration
  
  def change
	  add_column :contacts, :name, :string
  end
end
