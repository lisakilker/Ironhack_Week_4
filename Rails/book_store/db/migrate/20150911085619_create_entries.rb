class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
		t.text :description
		t.integer :ranking
      	t.timestamps null: false
    end
  end
end
