class CreateWallets < ActiveRecord::Migration[5.1]
  def change
    create_table :wallets do |t|
    	t.integer :account_id
    	t.string :address
    	t.date :date
    	t.boolean :lock , default: true
      t.timestamps
    end
    	add_index :wallets , :account_id
  end
end
