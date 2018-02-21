class CreateBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :banks do |t|
      t.integer :account_id
      t.string :name 
      t.string :bsb
      t.string :account
      t.timestamps
    end
    	add_index :banks , :account_id
  end
end
